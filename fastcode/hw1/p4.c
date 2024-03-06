#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>


#include "tsc_x86.h"

#define NUM_RUNS 1
#define CYCLES_REQUIRED 1e8
#define FREQUENCY 2e9
#define CALIBRATE

void comp(double *x, double *y, double *z, int n) {
    double s01, s11, s02, s12;
    for (int i = 0; i < n; i += 4) {
    //     for (int k = 0; k < 2; k++) {
    //         z[k] += x[i + 1 - k] * y[i + k];
    //     }
        s01 += x[i + 1] * y[i];
        s11 += x[i] * y[i + 1];
        s02 += x[i + 2] * y[i + 1];
        s12 += x[i + 1] * y[i + 2];
        // double s03 = x[i + 3] * y[i + 2];
        // double s13 = x[i + 2] * y[i + 3];
        // double s04 = x[i + 4] * y[i + 3];
        // double s14 = x[i + 3] * y[i + 4];
        // z[0] += s01 + s02 + s03 + s04;
        // z[1] += s11 + s12 + s13 + s14;
    }
    z[0] = s01 + s02;
    z[1] = s11 + s12;
}

void fillvec(double *x, int n) {
    for (int i = 0; i < n; i++) {
        x[i] = rand() / RAND_MAX;
    }
}

double ttime(double *x, double *y, double *z, int n) {

    long long cycles = 0;
    int num_runs = 1;
    for (; num_runs < (1 << 14); num_runs *= 2) {
        fillvec(x, n); 
        fillvec(y, n); 
        fillvec(z, n); 

        long long st = start_tsc();
        comp(x, y, z, n);
        cycles += stop_tsc(st); 

        if (cycles >= CYCLES_REQUIRED) {
            break;
        }
    }

    cycles = 0;
    for (int i = 0; i < num_runs; i++) {
        fillvec(x, n); 
        fillvec(y, n); 
        fillvec(z, n); 
        long long st = start_tsc();
        comp(x, y, z, n);
        cycles += stop_tsc(st); 
    }

    return (double)(cycles / num_runs);
}

int main(int argc, const char* argv[]) {
    srand(time(0));

    int n = atoi(argv[1]);
    double *x = (double *)malloc(sizeof(double) * n);
    double *y = (double *)malloc(sizeof(double) * n);
    double *z = (double *)malloc(sizeof(double) * n);

    double r = ttime(x, y, z, n);

    printf("%lf\n", r);
}