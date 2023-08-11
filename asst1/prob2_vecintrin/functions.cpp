#include <stdio.h>
#include <algorithm>
#include <math.h>
#include "CMU418intrin.h"
#include "logger.h"
using namespace std;


void absSerial(float* values, float* output, int N) {
    for (int i=0; i<N; i++) {
	float x = values[i];
	if (x < 0) {
	    output[i] = -x;
	} else {
	    output[i] = x;
	}
    }
}

// implementation of absolute value using 15418 instrinsics
void absVector(float* values, float* output, int N) {
    __cmu418_vec_float x;
    __cmu418_vec_float result;
    __cmu418_vec_float zero = _cmu418_vset_float(0.f);
    __cmu418_mask maskAll, maskIsNegative, maskIsNotNegative;

    //  Note: Take a careful look at this loop indexing.  This example
    //  code is not guaranteed to work when (N % VECTOR_WIDTH) != 0.
    //  Why is that the case?
    for (int i=0; i<N; i+=VECTOR_WIDTH) {

	// All ones
	maskAll = _cmu418_init_ones();

	// All zeros
	maskIsNegative = _cmu418_init_ones(0);

	// Load vector of values from contiguous memory addresses
	_cmu418_vload_float(x, values+i, maskAll);               // x = values[i];

	// Set mask according to predicate
	_cmu418_vlt_float(maskIsNegative, x, zero, maskAll);     // if (x < 0) {

	// Execute instruction using mask ("if" clause)
	_cmu418_vsub_float(result, zero, x, maskIsNegative);      //   output[i] = -x;

	// Inverse maskIsNegative to generate "else" mask
	maskIsNotNegative = _cmu418_mask_not(maskIsNegative);     // } else {

	// Execute instruction ("else" clause)
	_cmu418_vload_float(result, values+i, maskIsNotNegative); //   output[i] = x; }

	// Write results back to memory
	_cmu418_vstore_float(output+i, result, maskAll);
    }
}

// Accepts an array of values and an array of exponents
// For each element, compute values[i]^exponents[i] and clamp value to
// 4.18.  Store result in outputs.
// Uses iterative squaring, so that total iterations is proportional
// to the log_2 of the exponent
void clampedExpSerial(float* values, int* exponents, float* output, int N) {
    for (int i=0; i<N; i++) {
	float x = values[i];
	float result = 1.f;
	int y = exponents[i];
	float xpower = x;
	while (y > 0) {
    	    if (y & 0x1) {
		result *= xpower;
		if (result > 4.18f) {
		    result = 4.18f;
		    break;
		}
            }
	    xpower = xpower * xpower;
	    y >>= 1;
	}
	output[i] = result;
    }
}

void clampedExpVector(float* values, int* exponents, float* output, int N) {
    // TODO: Implement your vectorized version of clampedExpSerial here
    __cmu418_vec_float x;
    __cmu418_vec_int y;
    __cmu418_vec_float result;
    __cmu418_vec_int one = _cmu418_vset_int(1);
    __cmu418_vec_int zero = _cmu418_vset_int(0);
    __cmu418_vec_float _418 = _cmu418_vset_float(4.18f);
    __cmu418_mask maskNumber, maskIsPositive, maskIsOdd, maskIsOddInv, maskGt418;
    for (int i=0; i<N; i+=VECTOR_WIDTH) {
		// Valid array positions
		maskNumber = _cmu418_init_ones(min(N-i, VECTOR_WIDTH));
		maskIsPositive = _cmu418_init_ones(0);
		// Load vector of values from contiguous memory addresses
		x = _cmu418_vset_float(0.0f);
		y = _cmu418_vset_int(0);
		result = _cmu418_vset_float(0);
		_cmu418_vload_float(x, values+i, maskNumber);               // x = values[i];
		_cmu418_vload_int(y, exponents+i, maskNumber);              // y = exponents[i];
		_cmu418_vset_float(result, 1.0f, maskNumber);				// result = 1.0f
	
		_cmu418_vgt_int(maskIsPositive, y, zero, maskNumber);	// y > 0
		while (_cmu418_cntbits(maskIsPositive) > 0) {				// while ([exists]y > 0) {
			// if (y & 0x1) {
			__cmu418_vec_int odd = _cmu418_vset_int(0);
			_cmu418_vbitand_int(odd, y, one, maskIsPositive);
			maskIsOddInv = _cmu418_init_ones(0);
				// (y & 0x1) != 0
			_cmu418_veq_int(maskIsOddInv, odd, zero, maskIsPositive);
			maskIsOddInv = _cmu418_mask_not(maskIsOddInv);
			maskIsOdd = _cmu418_mask_and(maskIsOddInv, maskIsPositive);
			_cmu418_vmult_float(result, result, x, maskIsOdd);		// result *= xpower;
			// if (result > 4.18f) {
			maskGt418 = _cmu418_init_ones(0);
			_cmu418_vgt_float(maskGt418, result, _418, maskIsOdd);
			_cmu418_vset_float(result, 4.18f, maskGt418);	// result = 4.18f;
			// "break": set y = 0 
			_cmu418_vset_int(y, 0, maskGt418);	
			_cmu418_vgt_int(maskIsPositive, y, zero, maskNumber);	// y > 0

			_cmu418_vmult_float(x, x, x, maskIsPositive);		// xpower = xpower * xpower; 
			_cmu418_vshiftright_int(y, y, one, maskIsPositive); // y >>= 1;
		}
		// Write results back to memory
		_cmu418_vstore_float(output+i, result, maskNumber);
	}
}


float arraySumSerial(float* values, int N) {
    float sum = 0;
    for (int i=0; i<N; i++) {
	sum += values[i];
    }

    return sum;
}

// Assume N % VECTOR_WIDTH == 0
// Assume VECTOR_WIDTH is a power of 2
float arraySumVector(float* values, int N) {
    // TODO: Implement your vectorized version here
    __cmu418_vec_float result;
    __cmu418_vec_float tmp;
	__cmu418_mask maskAll = _cmu418_init_ones();
	__cmu418_mask maskFirst = _cmu418_init_ones(1);
	_cmu418_vload_float(result, values, maskAll); 
	for (int i = VECTOR_WIDTH; i < N; i += VECTOR_WIDTH) {
		_cmu418_vload_float(tmp, values+i, maskAll); 
		// Add to the first VEC
		_cmu418_vadd_float(result, result, tmp, maskAll);
	}
	// Add all in the first VEC
	for (int i = 0; i < log2(VECTOR_WIDTH); i ++) {
		_cmu418_interleave_float(tmp, result);
		_cmu418_hadd_float(result, tmp);
	}
	float sum = 0.0f;
	_cmu418_vstore_float(&sum, result, maskFirst);
    return sum;
}
