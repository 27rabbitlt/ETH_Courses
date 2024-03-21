/**
*      _________   _____________________  ____  ______
*     / ____/   | / ___/_  __/ ____/ __ \/ __ \/ ____/
*    / /_  / /| | \__ \ / / / /   / / / / / / / __/
*   / __/ / ___ |___/ // / / /___/ /_/ / /_/ / /___
*  /_/   /_/  |_/____//_/  \____/\____/_____/_____/
*
*  http://www.acl.inf.ethz.ch/teaching/fastcode
*  How to Write Fast Numerical Code 263-2300 - ETH Zurich
*  Copyright (C) 2019 
*                   Tyler Smith        (smitht@inf.ethz.ch) 
*                   Alen Stojanov      (astojanov@inf.ethz.ch)
*                   Gagandeep Singh    (gsingh@inf.ethz.ch)
*                   Markus Pueschel    (pueschel@inf.ethz.ch)
*
*  This program is free software: you can redistribute it and/or modify
*  it under the terms of the GNU General Public License as published by
*  the Free Software Foundation, either version 3 of the License, or
*  (at your option) any later version.
*
*  This program is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU General Public License for more details.
*
*  You should have received a copy of the GNU General Public License
*  along with this program. If not, see http://www.gnu.org/licenses/.
*/

#include <list>
#include <vector>
#include <string>
#include <iostream>
#include <algorithm>

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <string.h>
#include "tsc_x86.h"
#include "utils.h"
#include "mat.h"

using namespace std;

#define NR 32
#define CYCLES_REQUIRED 1e8
#define REP 35
#define EPS (1e-3)

#define C (1.0/3.0)
#define ALPHA 110.0/41.0


void kernel_base(mat* x, mat* y, mat*z) {
    double t1;
    for (int i = 0; i < z->n1; i++) {
        for (int j = 0; j < z->n2; j++) {
            if (i % 2) {
                t1 = mat_get(z,i,j)/cos(C*M_PI*j) + mat_get(x,i,j);
            } else {
                t1 = mat_get(z,i,j)/(sqrt(mat_get(y,i,0)) * sqrt(mat_get(x,0,j%6))) + mat_get(y,i,j);
            }
            mat_set(z,i,j,t1*cos(mat_get(x,0,j%3)));
        }
    }
    for (int i = 0; i < z->n1; i++) {
        for (int j = 0; j < z->n2; j++) {
          mat_activate(z, i, j, ALPHA);
        }
    }
}

/* prototype of the function you need to optimize */
typedef void(*comp_func)(mat* x, mat* y, mat*z);

void   register_functions();
double get_perf_score(comp_func f);
double perf_test(comp_func f, string desc, int flops);
void   add_function(comp_func f, string name, int flop);

/* Global vars, used to keep track of student functions */
vector<comp_func> userFuncs;
vector<string> funcNames;
vector<int> funcFlops;
int numFuncs = 0;

/*
* Registers a user function to be tested by the driver program. Registers a
* string description of the function as well
*/
void add_function(comp_func f, string name, int flops) {
    userFuncs.push_back(f);
    funcNames.emplace_back(name);
    funcFlops.push_back(flops);
    numFuncs++;
}


/*
* Checks the given function for validity. If valid, then computes and
* reports and returns the number of cycles required per iteration
*/
double perf_test(comp_func f, string desc, int flops) {
    double cycles = 0.;
    long num_runs = 1;
    double multiplier = 1;
    myInt64 start, end;

    int n = SIZE;
    mat x, y, z;
    mat_build(&x, n, n);
    mat_build(&y, n, n);
    rands(x.data, x.n1, x.n2, 0.1, 1.4);
    rands(y.data, y.n1, y.n2, 0.5, 1.5);
    mat_build(&z, n, n);
    
    // Warm-up phase: we determine a number of executions that allows
    // the code to be executed for at least CYCLES_REQUIRED cycles.
    // This helps excluding timing overhead when measuring small runtimes.
    do {
        num_runs = num_runs * multiplier;
        start = start_tsc();
        for (size_t i = 0; i < num_runs; i++) {
            f(&x, &y, &z);           
        }
        end = stop_tsc(start);

        cycles = (double)end;
        multiplier = (CYCLES_REQUIRED) / (cycles);
        
    } while (multiplier > 2);

    vector<double> cyclesList(REP);
    // Actual performance measurements repeated REP times.
    // We simply store all results and compute medians during post-processing.
    double total_cycles = 0;
    for (size_t j = 0; j < REP; j++) {

        start = start_tsc();
        for (size_t i = 0; i < num_runs; ++i) {
            f(&x, &y, &z);           
        }
        end = stop_tsc(start);

        cycles = ((double)end) / num_runs;
        total_cycles += cycles;

        cyclesList[j] = cycles;
    }
    total_cycles /= REP;
    sort(cyclesList.begin(), cyclesList.end());
    mat_destroy(&x);
    mat_destroy(&y);
    mat_destroy(&z);
    //cycles = total_cycles;
    cycles = cyclesList[REP/2];
    
    return  cycles; //round((100.0 * flops) / cycles) / 100.0;
}

int main(int argc, char **argv) {
  cout << "Starting program. ";
  double perf;
  int i;

  register_functions();

  if (numFuncs == 0){
    cout << endl;
    cout << "No functions registered - nothing for driver to do" << endl;
    cout << "Register functions by calling register_func(f, name)" << endl;
    cout << "in register_funcs()" << endl;

    return 0;
  }
  cout << numFuncs << " functions registered." << endl;
   
  //Check validity of functions.
  int n = SIZE;
  mat x, y, z, z_base, z_cp;
  mat_build(&x, n, n);
  mat_build(&y, n, n);
  rands(x.data, x.n1, x.n2, 0.1, 1.4);
  rands(y.data, y.n1, y.n2, 0.5, 1.0);
  mat_build(&z, n, n);
  mat_build(&z_cp, n, n);
  mat_build(&z_base, n, n);
  copy_n(z.data, n*n, z_cp.data);
  copy_n(z.data, n*n, z_base.data);
  
  kernel_base(&x, &y, &z_base);

  for (i = 0; i < numFuncs; i++) {
    comp_func f = userFuncs[i];
    f(&x, &y, &z);
    
    double error = nrm_sqr_diff(z.data, z_base.data, n*n);
    if (error > EPS) {
      cout << "\033[1;31m" << "The result of the " << i+1 << "th function is not correct." << "\033[0m" << std::endl;
    }
    copy_n(z_cp.data, n*n, z.data);
  }

  mat_destroy(&x);
  mat_destroy(&y);
  mat_destroy(&z);
  mat_destroy(&z_cp);
  mat_destroy(&z_base);


  for (i = 0; i < numFuncs; i++) {
    cout << endl << "Running: " << funcNames[i] << endl;
    perf = perf_test(userFuncs[i], funcNames[i], 1);
    cout << perf << " cycles" << endl;
  }

  return 0;
}