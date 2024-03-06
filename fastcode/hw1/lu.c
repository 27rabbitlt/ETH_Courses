//#error Please comment out the next two lines under linux, then comment this error
//#include "stdafx.h"  //Visual studio expects this line to be the first one, comment out if different compiler
//#include <windows.h> // Include if under windows

#ifndef WIN32
#include <sys/time.h>
#endif
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>


#ifdef __x86_64__
#include "tsc_x86.h"
#endif

#ifdef TEST
#include <assert.h>
#endif

#define NUM_RUNS 1
#define CYCLES_REQUIRED 1e8
#define FREQUENCY 2e9
#define CALIBRATE

/*
 *	Initialize the input
 */

void fill_matrix(double * A, int n) {
    for(int i=0; i < n; i++) {
        for(int j=0; j < n; j++) {
            A[n*i+j] = (double) rand() / RAND_MAX;
        }
        A[i*n+i] += 1;
    }
}

void fill_identity(double * A, int n) {
    memset(A, 0, sizeof(double) * n*n);
    for(int i=0; i < n; i++) {
        A[i*n+i] = 1.0;
    }
}

void fill_vector(double * x, int n) {
    for(int i=0; i < n; i++) {
        x[i] = (double) i + 1.0;
    }
}

/*
 * Straightforward implementation of lu decomposition
 */

void compute(double L[], double U[], int n) {
    for (int i = 0; i < n; i++){
        for (int j = i+1; j < n; j++){
            double factor = U[j * n + i] / U[i * n + i];
            for (int k = 0; k < n; k++){
                U[j * n + k] -= factor * U[i * n + k];
            }
            L[j*n + i] = factor;
        }
    }
}

/*
 * Timing function based on the TimeStep Counter of the CPU.
 */
#ifdef __x86_64__
double rdtsc(double A[], double L[], double U[], int n) {
    int i, num_runs;
    myInt64 cycles = 0;
    myInt64 start;
    num_runs = NUM_RUNS;

    /*
     * The CPUID instruction serializes the pipeline.
     * Using it, we can create execution barriers around the code we want to time.
     * The calibrate section is used to make the computation large enough so as to
     * avoid measurements bias due to the timing overhead.
     */
#ifdef CALIBRATE
    while(num_runs < (1 << 14)) {
        for (i = 0; i < num_runs; ++i) {
            fill_identity(L, n);
            memcpy(U, A, sizeof(double) * n * n);
            start = start_tsc();
            compute(L, U, n);
            cycles += stop_tsc(start);
        }

        if(cycles >= CYCLES_REQUIRED) break;

        num_runs *= 2;
    }
#endif

    cycles = 0;
    for (i = 0; i < num_runs; ++i) {
        fill_identity(L, n);
        memcpy(U, A, sizeof(double) * n * n);
        start = start_tsc();
        compute(L, U, n);
        cycles += stop_tsc(start);
    }

    cycles = cycles/num_runs;
    return (double) cycles;
}
#endif

double c_clock(double A[], double L[], double U[], int n) {
    int i, num_runs;
    double cycles = 0;
    clock_t start, end;

    num_runs = NUM_RUNS;
#ifdef CALIBRATE
    while(num_runs < (1 << 14)) {
        for (i = 0; i < num_runs; ++i) {
            fill_identity(L, n);
            memcpy(U, A, sizeof(double) * n * n);
            start = clock();
            compute(L, U, n);
            end = clock();
            cycles += (double)(end - start);
        }

        // Same as in c_clock: CYCLES_REQUIRED should be expressed accordingly to the order of magnitude of CLOCKS_PER_SEC
        if(cycles >= CYCLES_REQUIRED/(FREQUENCY/CLOCKS_PER_SEC)) break;

        num_runs *= 2;
    }
#endif
    cycles = 0;
    for(i=0; i<num_runs; ++i) {
        fill_identity(L, n);
        memcpy(U, A, sizeof(double) * n * n);
        start = clock();
        compute(L, U, n);
        end = clock();
        cycles += (double)(end - start);
    }
    return (cycles)/num_runs;
}

#ifndef WIN32
double timeofday(double A[], double L[], double U[], int n) {
    int i, num_runs;
    double cycles = 0;
    struct timeval start, end;

    num_runs = NUM_RUNS;
#ifdef CALIBRATE
    while(num_runs < (1 << 14)) {
        for (i = 0; i < num_runs; ++i) {
            fill_identity(L, n);
            memcpy(U, A, sizeof(double) * n * n);
            gettimeofday(&start, NULL);
            compute(L, U, n);
            gettimeofday(&end, NULL);
            cycles += (double)((end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec)/1e6)*FREQUENCY;
        }

        if(cycles >= CYCLES_REQUIRED) break;

        num_runs *= 2;
    }
#endif

    double seconds = 0;
    for(i=0; i < num_runs; ++i) {
        fill_identity(L, n);
        memcpy(U, A, sizeof(double) * n * n);
        gettimeofday(&start, NULL);
        compute(L, U, n);
        gettimeofday(&end, NULL);
        seconds += (double)((end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec)/1e6);
    }

    return seconds/num_runs;
}

#else

double gettickcount(double A[], double L[], double U[], int n) {
    int i, num_runs;
    double cycles, start, end;

    num_runs = NUM_RUNS;
#ifdef CALIBRATE
    while(num_runs < (1 << 14)) {

        for (i = 0; i < num_runs; ++i) {
            fill_identity(L, n);
            memcpy(U, A, sizeof(double) * n * n);
            start = (double)GetTickCount();
            compute(L, U, n);
            end = (double)GetTickCount();
            cycles += (double)(end - start);
        }

        cycles = cycles*FREQUENCY/1e3; // end-start provides a measurement in the order of milliseconds

        if(cycles >= CYCLES_REQUIRED) break;

        num_runs *= 2;
    }
#endif

    cycles = 0;
    for(i=0; i < num_runs; ++i) {
        fill_identity(L, n);
            memcpy(U, A, sizeof(double) * n * n);
            start = (double)GetTickCount();
            compute(L, U, n);
            end = (double)GetTickCount();
            cycles += (double)(end - start);
    }

    return cycles/num_runs;
}

double queryperfcounter(double A[], double L[], double U[], int n, LARGE_INTEGER f) {
    int i, num_runs;
    double cycles = 0;
    LARGE_INTEGER start, end;

    num_runs = NUM_RUNS;
#ifdef CALIBRATE
    while(num_runs < (1 << 14)) {
        for (i = 0; i < num_runs; ++i) {
            fill_identity(L, n);
            memcpy(U, A, sizeof(double) * n * n);
            QueryPerformanceCounter(&start);
            compute(L, U, n);
            QueryPerformanceCounter(&end);
            cycles += (double)(end.QuadPart - start.QuadPart);
        }

        // Same as in c_clock: CYCLES_REQUIRED should be expressed accordingly to the order of magnitude of f
        if(cycles >= CYCLES_REQUIRED/(FREQUENCY/f.QuadPart)) break;

        num_runs *= 2;
    }
#endif

    cycles = 0;
    for(i=0; i < num_runs; ++i) {
		fill_identity(L, n);
        memcpy(U, A, sizeof(double) * n * n);
        QueryPerformanceCounter(&start);
        compute(L, U, n);
        QueryPerformanceCounter(&end);
        cycles += (double)(end.QuadPart - start.QuadPart);
    }

    return cycles/num_runs;
}

#endif

int main(int argc, char **argv) {
    if (argc!=2) {printf("usage: FW <n>\n"); return -1;}
    int n = atoi(argv[1]);
    printf("n=%d \n",n);

    double* A = (double *)malloc(n*n*sizeof(double));
    double* L = (double *)malloc(n*n*sizeof(double));
    double* U = (double *)malloc(n*n*sizeof(double));

    fill_matrix(A, n);

#ifdef __x86_64__
    double r = rdtsc(A, L, U, n);
    printf("RDTSC instruction:\n %lf cycles measured => %lf seconds, assuming frequency is %lf MHz. (change in source file if different)\n\n", r, r/(FREQUENCY), (FREQUENCY)/1e6);
#endif

    double c = c_clock(A, L, U, n);
    printf("C clock() function:\n %lf cycles measured. On some systems, this number seems to be actually computed "
           "from a timer in seconds then transformed into clock ticks using the variable CLOCKS_PER_SEC. Unfortunately, "
           "it appears that CLOCKS_PER_SEC is sometimes set improperly. (According to this variable, your computer should "
           "be running at %lf MHz). In any case, dividing by this value should give a correct timing: %lf seconds. \n\n",c, (double) CLOCKS_PER_SEC/1e6, c/CLOCKS_PER_SEC);


#ifndef WIN32
    double t = timeofday(A, L, U, n);
    printf("C gettimeofday() function:\n %lf seconds measured\n\n",t);
#else
    LARGE_INTEGER f;
    double t = gettickcount(A, L, U, n);
    printf("Windows getTickCount() function:\n %lf milliseconds measured\n\n",t);

    QueryPerformanceFrequency((LARGE_INTEGER *)&f);

    double p = queryperfcounter(A, L, U, n, f);
    printf("Windows QueryPerformanceCounter() function:\n %lf cycles measured => %lf seconds, with reported CPU frequency %lf MHz\n\n",p,p/f.QuadPart,(double)f.QuadPart/1000);
#endif

    printf("%lf\n", r);

    return 0;
}

