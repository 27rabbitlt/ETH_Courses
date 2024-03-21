#pragma once

#include <string>
#include "mat.h"

typedef void(*comp_func)(mat* x, mat* y, mat*z);
void add_function(comp_func f, std::string name, int flop);
void kernel_base(double* A, double *x, double *y, int);