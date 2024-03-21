#include <iostream>
#include <iomanip>
#include <cmath>
#include "include/microbenchmark.h"
#include <fenv.h>

using namespace std;

typedef double (*funPtr_t)();

void run_microbenchmark(microbenchmark_mode_t test) {
    funPtr_t f;
    string test_name;
    int space = 8;
    switch (test) {
      case ADD_LAT        : space = 37; test_name = "add  latency";                      f = microbenchmark_get_add_latency ; break;
      case ADD_REC_TP     : space = 23; test_name = "add  reciprocal throughput";        f = microbenchmark_get_add_rec_tp     ; break;
      case SQT_LAT        : space = 37; test_name = "sqrt latency";                      f = microbenchmark_get_sqt_latency ; break;
      case SQT_REC_TP     : space = 23; test_name = "sqrt reciprocal throughput";        f = microbenchmark_get_sqt_rec_tp     ; break;
      case SQT_LAT_MIN    : space = 31; test_name = "sqrt latency (min)";                f = microbenchmark_get_sqt_latency ; break;
      case SQT_REC_TP_MIN : space = 17; test_name = "sqrt reciprocal throughput (min)";  f = microbenchmark_get_sqt_rec_tp     ; break;
      case FOO_LAT        : space = 37; test_name = "foo  latency";                      f = microbenchmark_get_foo_latency ; break;
      case FOO_REC_TP     : space = 23; test_name = "foo  reciprocal throughput";        f = microbenchmark_get_foo_rec_tp     ; break;
      case FOO_LAT_MIN    : space = 31; test_name = "foo  latency (min)";                f = microbenchmark_get_foo_latency ; break;
      case FOO_REC_TP_MIN : space = 17; test_name = "foo  reciprocal throughput (min)";  f = microbenchmark_get_foo_rec_tp     ; break;
      default: cout << "Out of range" << endl;  return;
    }
    
    /* Initialize and run microbenchmark */
    initialize_microbenchmark_data(test);
    double cycles = f();
    cout << "Measured "  << test_name << " : ";
    cout << "\033[1;35m" << setw(space)  << fixed << setprecision(6) << cycles << "\033[0m" << " cyc";
    cout << endl;
}

int main () {
    // feenableexcept(FE_INVALID | FE_OVERFLOW | FE_DIVBYZERO); // Exception when nan is detected
    for (int i = START_TEST; i <= END_TEST; ++i) {
      auto test = (microbenchmark_mode_t) i;
      run_microbenchmark(test);
    }    
    cout << "End of benchmark" << endl;
    return 0;
}