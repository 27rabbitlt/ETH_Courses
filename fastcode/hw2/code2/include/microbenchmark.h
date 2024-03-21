#ifndef MICROBENCHMARK_H
#define MICROBENCHMARK_H

typedef enum {
    ADD_LAT,
    ADD_REC_TP,
    SQT_LAT,
    SQT_REC_TP,
    SQT_LAT_MIN,
    SQT_REC_TP_MIN,
    FOO_LAT,
    FOO_REC_TP,
    FOO_LAT_MIN,
    FOO_REC_TP_MIN,
    
    /* Limits */
    START_TEST = ADD_LAT,
    END_TEST = FOO_REC_TP_MIN,
} microbenchmark_mode_t;


void    initialize_microbenchmark_data(microbenchmark_mode_t mode);
double  microbenchmark_get_add_latency();
double  microbenchmark_get_add_rec_tp    ();
double  microbenchmark_get_sqt_latency();
double  microbenchmark_get_sqt_rec_tp    ();
double  microbenchmark_get_foo_latency();
double  microbenchmark_get_foo_rec_tp    ();


#endif /* MICROBENCHMARK_H */
