#include "include/microbenchmark.h"
#include "include/tsc_x86.h"
#include "include/foo.h"

double arr[1000005];
double arr_t[1000005];
double arr_s[1000005];
double res, res2;
double t0 = 0, t1 = 0, t2 = 0, t3 = 0, t4 = 0, t5 = 0, t6 = 0, t7 = 0;
double s0, s1, s2, s3, s4, s5, s6, s7;
double k0, k1, k2, k3, k4, k5, k6, k7;

void initialize_microbenchmark_data (microbenchmark_mode_t mode) {
    /* You can use to initialize some data if needed */
    switch (mode) {
        case ADD_LAT:
        case ADD_REC_TP:
        case SQT_LAT:
            for (int i = 0; i < 1000000; i++) {
                arr[i] = (double)rand() / RAND_MAX;
            }
            break;
        case SQT_REC_TP:
            for (int i = 0; i < 1000000; i++) {
                arr[i] = (double)rand() / RAND_MAX;
                arr_t[i] = arr[i];
            }
            break;
        case SQT_LAT_MIN:
            for (int i = 0; i < 1000000; i++) {
                arr[i] = 1;
            }
            break;
        case SQT_REC_TP_MIN:
            for (int i = 0; i < 1000000; i++) {
                arr[i] = 1;
            }
            break;
        case FOO_LAT:
        case FOO_REC_TP:
        case FOO_LAT_MIN:
        case FOO_REC_TP_MIN:
        default: break;
    }
}


double microbenchmark_get_add_latency() {
    /* Implement your microbenchmark benchmark here */
    
    // warm up
    double tmp = 10;
    for (int i = 0; i < 1000; i++) {
        tmp = tmp * 945435 / sqrt(tmp);
    }
    
    for (int i = 0; i < 1000000; i++) {
        arr[i] = (double)rand() / RAND_MAX;
    }
    
    // measure the overhead
    // not necessary I have to say
    myInt64 st_0 = start_tsc();
    for (int i = 0; i < 1000000; i++) {
    }
    myInt64 tim_dur_0 = stop_tsc(st_0);

    double sum = 0.0;
    myInt64 st = start_tsc();
    for (int i = 0; i < 1000000; i++) {
        sum += arr[i];
    }
    myInt64 tim_dur = stop_tsc(st);
    
    // must have some side-effect, otherwise -O3 will optimize the for-loop out
    res = sum;
    
    return (double) (tim_dur - tim_dur_0) / 1000000;
}

double microbenchmark_get_add_rec_tp() {
    /* Implement your microbenchmark benchmark here */
    
    // warm up
    double tmp = 10;
    for (int i = 0; i < 1000; i++) {
        tmp = tmp * 945435 / sqrt(tmp);
    }
    
    for (int i = 0; i < 1000000; i++) {
        arr[i] = (double)rand() / RAND_MAX;
    }
   
    myInt64 st = start_tsc();
    for (int i = 0; i < 1000000; i += 8) {
        t0 += arr[i];
        t1 += arr[i + 1];
        t2 += arr[i + 2];
        t3 += arr[i + 3];
        t4 += arr[i + 4];
        t5 += arr[i + 5];
        t6 += arr[i + 6];
        t7 += arr[i + 7];
    }
    myInt64 tim_dur = stop_tsc(st);
    
    myInt64 st_ = start_tsc();
    for (int i = 0; i < 1000000; i += 8) {
        t0 += arr[i];
        t1 += arr[i + 1];
        t2 += arr[i + 2];
        t3 += arr[i + 3];
        t4 += arr[i + 4];
        t5 += arr[i + 5];
        t6 += arr[i + 6];
        t7 += arr[i + 7];
        s0 += arr[i];
        s1 += arr[i + 1];
        s2 += arr[i + 2];
        s3 += arr[i + 3];
        s4 += arr[i + 4];
        s5 += arr[i + 5];
        s6 += arr[i + 6];
        s7 += arr[i + 7];
    }
    myInt64 tim_dur_ = stop_tsc(st_);
    
    return (double)(tim_dur_ - tim_dur) / 1000000;
}

double microbenchmark_get_sqt_latency() {
    /* Implement your microbenchmark benchmark here */
    
    // warm up
    double tmp = 10;
    for (int i = 0; i < 1000; i++) {
        tmp = tmp * 945435 / sqrt(tmp);
    }
    
    // measure the overhead
    // not very necessary I have to say
    myInt64 st_0 = start_tsc();
    for (int i = 0; i < 1000000; i++) {
    }
    myInt64 tim_dur_0 = stop_tsc(st_0);

    myInt64 st = start_tsc();
    for (int i = 0; i < 1000000; i++) {
        arr[i + 1] = sqrt(arr[i]);
    }
    myInt64 tim_dur = stop_tsc(st);
    
    return (double) (tim_dur - tim_dur_0) / 1000000;
}

double microbenchmark_get_sqt_rec_tp() {
    /* Implement your microbenchmark benchmark here */
    
    // warm up
    double tmp = 10;
    for (int i = 0; i < 1000; i++) {
        tmp = tmp * 945435 / sqrt(tmp);
    }
    
    // measure the overhead
    myInt64 st_ = start_tsc();
    for (int i = 0; i < 1000000; i += 8) {
        arr_t[i] = (arr[i]);
        arr_t[i + 1] = (arr[i + 1]);
        arr_t[i + 2] = (arr[i + 2]);
        arr_t[i + 3] = (arr[i + 3]);
        arr_t[i + 4] = (arr[i + 4]);
        arr_t[i + 5] = (arr[i + 5]);
        arr_t[i + 6] = (arr[i + 6]);
        arr_t[i + 7] = (arr[i + 7]);
    }
    myInt64 tim_dur_ = stop_tsc(st_);
    
    myInt64 st = start_tsc();
    for (int i = 0; i < 1000000; i += 8) {
        arr_s[i] = sqrt(arr[i]);
        arr_s[i + 1] = sqrt(arr[i + 1]);
        arr_s[i + 2] = sqrt(arr[i + 2]);
        arr_s[i + 3] = sqrt(arr[i + 3]);
        arr_s[i + 4] = sqrt(arr[i + 4]);
        arr_s[i + 5] = sqrt(arr[i + 5]);
        arr_s[i + 6] = sqrt(arr[i + 6]);
        arr_s[i + 7] = sqrt(arr[i + 7]);
        
        // arr_s[i] = sqrt(arr_s[i]);
        // arr_s[i + 1] = sqrt(arr_s[i + 1]);
        // arr_s[i + 2] = sqrt(arr_s[i + 2]);
        // arr_s[i + 3] = sqrt(arr_s[i + 3]);
        // arr_s[i + 4] = sqrt(arr_s[i + 4]);
        // arr_s[i + 5] = sqrt(arr_s[i + 5]);
        // arr_s[i + 6] = sqrt(arr_s[i + 6]);
        // arr_s[i + 7] = sqrt(arr_s[i + 7]);
        
    }
    myInt64 tim_dur = stop_tsc(st);
    
    // return 4.5;
    return (double)(tim_dur_ - 0) / 1000000;
}

double microbenchmark_get_foo_latency() {
    /* Implement your microbenchmark benchmark here */
    return 0;
}

double microbenchmark_get_foo_rec_tp() {
    /* Implement your microbenchmark benchmark here */
    return 0;
}