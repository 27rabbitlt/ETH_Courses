#pragma once

#include "utils.h"

typedef struct{
    int n1;
    int n2;
    double *data;
} mat;

void mat_build(mat* m, int n1, int n2);
void mat_destroy(mat* m);
int mat_len(mat* m);
double mat_get(mat *m, int i, int j);
void mat_set(mat *m, int i, int j, double val);
void mat_activate(mat *m, int i, int j, double a);