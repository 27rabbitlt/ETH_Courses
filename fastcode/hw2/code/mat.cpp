#include "mat.h"
#include "utils.h"
#include <stdlib.h>

void mat_build(mat* m, int n1, int n2) {
    build(&m->data, n1, n2);
    m->n1 = n1; // number of rows
    m->n2 = n2; // number of columns
}

void mat_destroy(mat* m) {
    destroy(m->data);
}

int mat_len(mat* m) {
    return m->n1 * m->n2;
}

/* retrieve vector element and store at val */
double mat_get(mat *m, int i, int j) {
    int ij = i * m->n2 + j;
    if (ij < 0 || ij >= mat_len(m))
        return NAN;
    return m->data[ij];
}

void mat_set(mat *m, int i, int j, double val) {
    int ij = i * m->n2 + j;
    if (ij < 0 || ij >= mat_len(m))
        return;
    m->data[ij] = val;
}

void mat_activate(mat *m, int i, int j, double a){
  int ij = i * m->n2 + j;
    if (ij < 0 || ij >= mat_len(m))
        return;
    m->data[ij] = abs(fmax(m->data[ij], a*m->data[ij])) + 1;
}