#include "common.h"
#include "mat.h"


#define C (1.0/3.0)
#define ALPHA 110.0/41.0

using namespace std;

void slow_performance1(mat* x, mat* y, mat*z) {
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

#define get(x, i, j) (x##data[(i) * (100) + (j)])
#define set(x, i, j, v) (x##data[(i) * (100) + (j)]) = (v)

void remove_matgetset(mat *x, mat *y, mat *z) {
    double *xdata = x->data;
    double *ydata = y->data;
    double *zdata = z->data;
    
    double t1;
    for (int i = 0; i < z->n1; i++) {
        for (int j = 0; j < z->n2; j++) {
            if (i % 2) {
                t1 = get(z, i, j) / cos(C * M_PI * j) + get(x, i, j);
            } else {
                t1 = get(z, i, j) / (sqrt(get(y, i, 0)) * sqrt(get(x, 0, j%6))) + get(y, i, j);
            }
            set(z, i, j, t1 * cos(get(x, 0, j%3)));
        }
    }
    for (int i = 0; i < z->n1; i++) {
        for (int j = 0; j < z->n2; j++) {
          // mat_activate(z, i, j, ALPHA);
          // set(z, i, j, get(z, i, j) * ALPHA + 1);
          int ij = i * z->n2 + j;
          z->data[ij] = abs(fmax(z->data[ij], ALPHA * z->data[ij])) + 1;
        }
    }
}

void remove_abs(mat *x, mat *y, mat *z) {
    double *xdata = x->data;
    double *ydata = y->data;
    double *zdata = z->data;
    double t1;
    for (int i = 0; i < z->n1; i++) {
        for (int j = 0; j < z->n2; j++) {
            if (i % 2) {
                t1 = get(z, i, j) / cos(C * M_PI * j) + get(x, i, j);
            } else {
                t1 = get(z, i, j) / (sqrt(get(y, i, 0)) * sqrt(get(x, 0, j%6))) + get(y, i, j);
            }
            set(z, i, j, t1 * cos(get(x, 0, j%3)));
        }
    }
    for (int i = 0; i < z->n1; i++) {
        for (int j = 0; j < z->n2; j++) {
          // mat_activate(z, i, j, ALPHA);
          // set(z, i, j, get(z, i, j) * ALPHA + 1);
          int ij = i * z->n2 + j;
          // z->data[ij] = abs(fmax(z->data[ij], ALPHA * z->data[ij])) + 1;
          if (z->data[ij] > 0)
              z->data[ij] = ALPHA * z->data[ij] + 1;
          else 
              z->data[ij] = -z->data[ij] + 1;
        }
    }
}

void move_iparity_out(mat *x, mat *y, mat *z) {
    double *xdata = x->data;
    double *ydata = y->data;
    double *zdata = z->data;
    double t1;
    for (int i = 0; i < z->n1; i++) {
        if (i % 2) {
            for (int j = 0; j < z->n2; j++) {
                t1 = get(z, i, j) / cos(C * M_PI * j) + get(x, i, j);
                set(z, i, j, t1 * cos(get(x, 0, j%3)));
            }
        } else {
            for (int j = 0; j < z->n2; j++) {
                t1 = get(z, i, j) / (sqrt(get(y, i, 0)) * sqrt(get(x, 0, j%6))) + get(y, i, j);
                set(z, i, j, t1 * cos(get(x, 0, j%3)));
            }
        }
    }
    for (int i = 0; i < z->n1; i++) {
        for (int j = 0; j < z->n2; j++) {
          int ij = i * z->n2 + j;
          if (z->data[ij] > 0)
              z->data[ij] = ALPHA * z->data[ij] + 1;
          else 
              z->data[ij] = -z->data[ij] + 1;
        }
    }
}

void loop_unrolling_1i(mat *x, mat *y, mat *z) {
    double *xdata = x->data;
    double *ydata = y->data;
    double *zdata = z->data;
    double t0, t1;
    for (int i = 0; i < z->n1; i += 2) {
        for (int j = 0; j < z->n2; j++) {
          
            double zij = get(z, i, j);
            double yi0 = get(y, i, 0);
            double x0j = get(x, 0, j % 6);
            double yij = get(y, i, j);
            
            double zi1j = get(z, i + 1, j);
            double xi1j = get(x, i + 1, j);
            
            double x0j3 = get(x, 0, j % 3);
            
            t0 = (zij / (sqrt(yi0 * x0j)) + yij) * cos(x0j3);
            t1 = (zi1j / cos(C * M_PI * j) + xi1j) * cos(x0j3);
            
            set(z, i, j, t0);
            set(z, i + 1, j, t1);
        }
        
    }
    for (int i = 0; i < z->n1; i++) {
        for (int j = 0; j < z->n2; j++) {
          int ij = i * z->n2 + j;
          if (z->data[ij] > 0)
              z->data[ij] = ALPHA * z->data[ij] + 1;
          else 
              z->data[ij] = -z->data[ij] + 1;
        }
    }
}

void loop_unrolling_full(mat *x, mat *y, mat *z) {
    double *xdata = x->data;
    double *ydata = y->data;
    double *zdata = z->data;
    double t0, t1;
    
    for (int i = 0; i < 100; i += 2) {
        double yi0 = get(y, i, 0);
        
        double x00 = get(x, 0, 0);
        double x01 = get(x, 0, 1);
        double x02 = get(x, 0, 2);
        double x03 = get(x, 0, 3);
        double x04 = get(x, 0, 4);
        double x05 = get(x, 0, 5);
        
        for (int j = 0; j < 96; j += 6) {
            // load 0
            double zij0 = get(z, i, j + 0);
            double yij0 = get(y, i, j + 0);
            double zi1j0 = get(z, i + 1, j + 0);
            double xi1j0 = get(x, i + 1, j + 0);
            
            // load 1
            double zij1 = get(z, i, j + 1);
            double yij1 = get(y, i, j + 1);
            double zi1j1 = get(z, i + 1, j + 1);
            double xi1j1 = get(x, i + 1, j + 1);
            
            // load 2
            double zij2 = get(z, i, j + 2);
            double yij2 = get(y, i, j + 2);
            double zi1j2 = get(z, i + 1, j + 2);
            double xi1j2 = get(x, i + 1, j + 2);
            
            // load 3
            double zij3 = get(z, i, j + 3);
            double yij3 = get(y, i, j + 3);
            double zi1j3 = get(z, i + 1, j + 3);
            double xi1j3 = get(x, i + 1, j + 3);
            
            // load 4
            double zij4 = get(z, i, j + 4);
            double yij4 = get(y, i, j + 4);
            double zi1j4 = get(z, i + 1, j + 4);
            double xi1j4 = get(x, i + 1, j + 4);
            
            // load 5
            double zij5 = get(z, i, j + 5);
            double yij5 = get(y, i, j + 5);
            double zi1j5 = get(z, i + 1, j + 5);
            double xi1j5 = get(x, i + 1, j + 5);
            
            // calc0
            double t00 = (zij0 / (sqrt(yi0 * x00)) + yij0) * cos(x00);
            double t10 = (zi1j0 / 1 + xi1j0) * cos(x00);
            
            // calc1
            double t01 = (zij1 / (sqrt(yi0 * x01)) + yij1) * cos(x01);
            double t11 = (zi1j1 / cos(C * M_PI * 1) + xi1j1) * cos(x01);
            
            // calc2
            double t02 = (zij2 / (sqrt(yi0 * x02)) + yij2) * cos(x02);
            double t12 = (zi1j2 / cos(C * M_PI * 2) + xi1j2) * cos(x02);
            
            // calc3
            double t03 = (zij3 / (sqrt(yi0 * x03)) + yij3) * cos(x00);
            double t13 = (zi1j3 / cos(C * M_PI * 3) + xi1j3) * cos(x00);
            
            // calc4
            double t04 = (zij4 / (sqrt(yi0 * x04)) + yij4) * cos(x01);
            double t14 = (zi1j4 / cos(C * M_PI * 4) + xi1j4) * cos(x01);
            
            // calc5
            double t05 = (zij5 / (sqrt(yi0 * x05)) + yij5) * cos(x02);
            double t15 = (zi1j5 / cos(C * M_PI * 5) + xi1j5) * cos(x02);
            
            // store0
            set(z, i, j, t00);
            set(z, i + 1, j, t10);
            
            // store1
            set(z, i, j + 1, t01);
            set(z, i + 1, j + 1, t11);
            
            // store2
            set(z, i, j + 2, t02);
            set(z, i + 1, j + 2, t12);
            
            // store3
            set(z, i, j + 3, t03);
            set(z, i + 1, j + 3, t13);
            
            // store4
            set(z, i, j + 4, t04);
            set(z, i + 1, j + 4, t14);
            
            // store5
            set(z, i, j + 5, t05);
            set(z, i + 1, j + 5, t15);
        }
        
        int j = 96;
        // load 0
        double zij0 = get(z, i, j + 0);
        double yij0 = get(y, i, j + 0);
        double zi1j0 = get(z, i + 1, j + 0);
        double xi1j0 = get(x, i + 1, j + 0);
        
        // load 1
        double zij1 = get(z, i, j + 1);
        double yij1 = get(y, i, j + 1);
        double zi1j1 = get(z, i + 1, j + 1);
        double xi1j1 = get(x, i + 1, j + 1);
        
        // load 2
        double zij2 = get(z, i, j + 2);
        double yij2 = get(y, i, j + 2);
        double zi1j2 = get(z, i + 1, j + 2);
        double xi1j2 = get(x, i + 1, j + 2);
        
        // load 3
        double zij3 = get(z, i, j + 3);
        double yij3 = get(y, i, j + 3);
        double zi1j3 = get(z, i + 1, j + 3);
        double xi1j3 = get(x, i + 1, j + 3);
 
        // calc0
        double t00 = (zij0 / (sqrt(yi0 * x00)) + yij0) * cos(x00);
        double t10 = (zi1j0 / cos(C * M_PI * 0) + xi1j0) * cos(x00);
        
        // calc1
        double t01 = (zij1 / (sqrt(yi0 * x01)) + yij1) * cos(x01);
        double t11 = (zi1j1 / cos(C * M_PI * 1) + xi1j1) * cos(x01);
        
        // calc2
        double t02 = (zij2 / (sqrt(yi0 * x02)) + yij2) * cos(x02);
        double t12 = (zi1j2 / cos(C * M_PI * 2) + xi1j2) * cos(x02);
        
        // calc3
        double t03 = (zij3 / (sqrt(yi0 * x03)) + yij3) * cos(x00);
        double t13 = (zi1j3 / cos(C * M_PI * 3) + xi1j3) * cos(x00);
 
        // store0
        set(z, i, j, t00);
        set(z, i + 1, j, t10);
        
        // store1
        set(z, i, j + 1, t01);
        set(z, i + 1, j + 1, t11);
        
        // store2
        set(z, i, j + 2, t02);
        set(z, i + 1, j + 2, t12);
        
        // store3
        set(z, i, j + 3, t03);
        set(z, i + 1, j + 3, t13);
    }
    
    for (int i = 0; i < z->n1; i++) {
        for (int j = 0; j < z->n2; j++) {
          int ij = i * z->n2 + j;
          if (z->data[ij] > 0)
              z->data[ij] = ALPHA * z->data[ij] + 1;
          else 
              z->data[ij] = -z->data[ij] + 1;
        }
    }
}

void remove_cosine(mat *x, mat *y, mat *z) {
    double *xdata = x->data;
    double *ydata = y->data;
    double *zdata = z->data;
    double t0, t1;
        
    double x00 = get(x, 0, 0);
    double x01 = get(x, 0, 1);
    double x02 = get(x, 0, 2);
    double x03 = get(x, 0, 3);
    double x04 = get(x, 0, 4);
    double x05 = get(x, 0, 5);
    
    double cs0 = cos(x00);
    double cs1 = cos(x01);
    double cs2 = cos(x02);
    
    constexpr double csc1 = cos(C * M_PI * 1);
    constexpr double csc2 = cos(C * M_PI * 2);
    constexpr double csc3 = cos(C * M_PI * 3);
    constexpr double csc4 = cos(C * M_PI * 4);
    constexpr double csc5 = cos(C * M_PI * 5);
    
    for (int i = 0; i < 100; i += 2) {
        double yi0 = get(y, i, 0);
        
        double sqrt0 = sqrt(yi0 * x00);
        double sqrt1 = sqrt(yi0 * x01);
        double sqrt2 = sqrt(yi0 * x02);
        double sqrt3 = sqrt(yi0 * x03);
        double sqrt4 = sqrt(yi0 * x04);
        double sqrt5 = sqrt(yi0 * x05);
        
        for (int j = 0; j < 96; j += 6) {
            // load 0
            double zij0 = get(z, i, j + 0);
            double yij0 = get(y, i, j + 0);
            double zi1j0 = get(z, i + 1, j + 0);
            double xi1j0 = get(x, i + 1, j + 0);
            
            // load 1
            double zij1 = get(z, i, j + 1);
            double yij1 = get(y, i, j + 1);
            double zi1j1 = get(z, i + 1, j + 1);
            double xi1j1 = get(x, i + 1, j + 1);
            
            // load 2
            double zij2 = get(z, i, j + 2);
            double yij2 = get(y, i, j + 2);
            double zi1j2 = get(z, i + 1, j + 2);
            double xi1j2 = get(x, i + 1, j + 2);
            
            // load 3
            double zij3 = get(z, i, j + 3);
            double yij3 = get(y, i, j + 3);
            double zi1j3 = get(z, i + 1, j + 3);
            double xi1j3 = get(x, i + 1, j + 3);
            
            // load 4
            double zij4 = get(z, i, j + 4);
            double yij4 = get(y, i, j + 4);
            double zi1j4 = get(z, i + 1, j + 4);
            double xi1j4 = get(x, i + 1, j + 4);
            
            // load 5
            double zij5 = get(z, i, j + 5);
            double yij5 = get(y, i, j + 5);
            double zi1j5 = get(z, i + 1, j + 5);
            double xi1j5 = get(x, i + 1, j + 5);
            
            // calc0
            double t00 = (zij0 / sqrt0 + yij0) * cs0 * ALPHA + 1;
            double t10 = (zi1j0 + xi1j0) * cs0 * ALPHA + 1;
            
            // calc1
            double t01 = (zij1 / sqrt1 + yij1) * cs1 * ALPHA + 1;
            double t11 = (zi1j1 / csc1 + xi1j1) * cs1 * ALPHA + 1;
            
            // calc2
            double t02 = (zij2 / sqrt2 + yij2) * cs2 * ALPHA + 1;
            double t12 = (zi1j2 / csc2 + xi1j2) * cs2;
            if (t12 > 0)
                t12 = t12  * ALPHA + 1;
            else 
                t12 = -t12 + 1;
            
            // calc3
            double t03 = (zij3 / sqrt3 + yij3) * cs0 * ALPHA + 1;
            double t13 = (zi1j3 / csc3 + xi1j3) * cs0;
            if (t13 > 0)
                t13 = t13  * ALPHA + 1;
            else 
                t13 = -t13 + 1;
            
            // calc4
            double t04 = (zij4 / sqrt4 + yij4) * cs1 * ALPHA + 1;
            double t14 = (zi1j4 / csc4 + xi1j4) * cs1;
            if (t14 > 0)
                t14 = t14  * ALPHA + 1;
            else 
                t14 = -t14 + 1;
            
            // calc5
            double t05 = (zij5 / sqrt5 + yij5) * cs2 * ALPHA + 1;
            double t15 = (zi1j5 / csc5 + xi1j5) * cs2 * ALPHA + 1;
            
            // store0
            set(z, i, j, t00);
            set(z, i + 1, j, t10);
            
            // store1
            set(z, i, j + 1, t01);
            set(z, i + 1, j + 1, t11);
            
            // store2
            set(z, i, j + 2, t02);
            set(z, i + 1, j + 2, t12);
            
            // store3
            set(z, i, j + 3, t03);
            set(z, i + 1, j + 3, t13);
            
            // store4
            set(z, i, j + 4, t04);
            set(z, i + 1, j + 4, t14);
            
            // store5
            set(z, i, j + 5, t05);
            set(z, i + 1, j + 5, t15);
        }
        
        int j = 96;
        // load 0
        double zij0 = get(z, i, j + 0);
        double yij0 = get(y, i, j + 0);
        double zi1j0 = get(z, i + 1, j + 0);
        double xi1j0 = get(x, i + 1, j + 0);
        
        // load 1
        double zij1 = get(z, i, j + 1);
        double yij1 = get(y, i, j + 1);
        double zi1j1 = get(z, i + 1, j + 1);
        double xi1j1 = get(x, i + 1, j + 1);
        
        // load 2
        double zij2 = get(z, i, j + 2);
        double yij2 = get(y, i, j + 2);
        double zi1j2 = get(z, i + 1, j + 2);
        double xi1j2 = get(x, i + 1, j + 2);
        
        // load 3
        double zij3 = get(z, i, j + 3);
        double yij3 = get(y, i, j + 3);
        double zi1j3 = get(z, i + 1, j + 3);
        double xi1j3 = get(x, i + 1, j + 3);
 
        // calc0
        double t00 = (zij0 / sqrt0 + yij0) * cos(x00) * ALPHA + 1;
        double t10 = (zi1j0 / 1 + xi1j0) * cos(x00) * ALPHA + 1;
        
        // calc1
        double t01 = (zij1 / sqrt1 + yij1) * cos(x01) * ALPHA + 1;
        double t11 = (zi1j1 / csc1 + xi1j1) * cos(x01) * ALPHA + 1;
        
        // calc2
        double t02 = (zij2 / sqrt2 + yij2) * cos(x02) * ALPHA + 1;
        double t12 = (zi1j2 / csc2 + xi1j2) * cos(x02);
        if (t12 > 0)
                t12 = t12  * ALPHA + 1;
        else 
            t12 = -t12 + 1;
        
        // calc3
        double t03 = (zij3 / sqrt3 + yij3) * cos(x00) * ALPHA + 1;
        double t13 = (zi1j3 / csc3 + xi1j3) * cos(x00);
        if (t13 > 0)
                t13 = t13  * ALPHA + 1;
        else 
            t13 = -t13 + 1;
 
        // store0
        set(z, i, j, t00);
        set(z, i + 1, j, t10);
        
        // store1
        set(z, i, j + 1, t01);
        set(z, i + 1, j + 1, t11);
        
        // store2
        set(z, i, j + 2, t02);
        set(z, i + 1, j + 2, t12);
        
        // store3
        set(z, i, j + 3, t03);
        set(z, i + 1, j + 3, t13);
    }
    
    // for (int i = 0; i < 100; i++) {
    //     for (int j = 0; j < 100; j++) {
    //       int ij = i * 100 + j;
    //       if (z->data[ij] > 0)
    //           z->data[ij] = ALPHA * z->data[ij] + 1;
    //       else 
    //           z->data[ij] = -z->data[ij] + 1;
    //     }
    // }
}

void final_merge_twofor(mat *x, mat *y, mat *z) {
    double *xdata = x->data;
    double *ydata = y->data;
    double *zdata = z->data;
    double t0, t1;
    
    for (int i = 0; i < 100; i += 2) {
        double yi0 = get(y, i, 0);
        
        double x00 = get(x, 0, 0);
        double x01 = get(x, 0, 1);
        double x02 = get(x, 0, 2);
        double x03 = get(x, 0, 3);
        double x04 = get(x, 0, 4);
        double x05 = get(x, 0, 5);
        
        for (int j = 0; j < 96; j += 6) {
            // load 0
            double zij0 = get(z, i, j + 0);
            double yij0 = get(y, i, j + 0);
            double zi1j0 = get(z, i + 1, j + 0);
            double xi1j0 = get(x, i + 1, j + 0);
            
            // load 1
            double zij1 = get(z, i, j + 1);
            double yij1 = get(y, i, j + 1);
            double zi1j1 = get(z, i + 1, j + 1);
            double xi1j1 = get(x, i + 1, j + 1);
            
            // load 2
            double zij2 = get(z, i, j + 2);
            double yij2 = get(y, i, j + 2);
            double zi1j2 = get(z, i + 1, j + 2);
            double xi1j2 = get(x, i + 1, j + 2);
            
            // load 3
            double zij3 = get(z, i, j + 3);
            double yij3 = get(y, i, j + 3);
            double zi1j3 = get(z, i + 1, j + 3);
            double xi1j3 = get(x, i + 1, j + 3);
            
            // load 4
            double zij4 = get(z, i, j + 4);
            double yij4 = get(y, i, j + 4);
            double zi1j4 = get(z, i + 1, j + 4);
            double xi1j4 = get(x, i + 1, j + 4);
            
            // load 5
            double zij5 = get(z, i, j + 5);
            double yij5 = get(y, i, j + 5);
            double zi1j5 = get(z, i + 1, j + 5);
            double xi1j5 = get(x, i + 1, j + 5);
            
            // calc0
            double t00 = (zij0 / (sqrt(yi0 * x00)) + yij0) * cos(x00) * ALPHA + 1;
            double t10 = (zi1j0 / 1 + xi1j0) * cos(x00) * ALPHA + 1;
            
            // calc1
            double t01 = (zij1 / (sqrt(yi0 * x01)) + yij1) * cos(x01) * ALPHA + 1;
            double t11 = (zi1j1 / cos(C * M_PI * 1) + xi1j1) * cos(x01) * ALPHA + 1;
            
            // calc2
            double t02 = (zij2 / (sqrt(yi0 * x02)) + yij2) * cos(x02) * ALPHA + 1;
            double t12 = (zi1j2 / cos(C * M_PI * 2) + xi1j2) * cos(x02);
            if (t12 < 0)
                t12 = -t12 + 1;
            else 
                t12 = t12 * ALPHA + 1;
            
            // calc3
            double t03 = (zij3 / (sqrt(yi0 * x03)) + yij3) * cos(x00) * ALPHA + 1;
            double t13 = (zi1j3 / cos(C * M_PI * 3) + xi1j3) * cos(x00);
            if (t13 < 0)
                t13 = -t13 + 1;
            else 
                t13 = t13 * ALPHA + 1;
            
            // calc4
            double t04 = (zij4 / (sqrt(yi0 * x04)) + yij4) * cos(x01) * ALPHA + 1;
            double t14 = (zi1j4 / cos(C * M_PI * 4) + xi1j4) * cos(x01);
            if (t14 < 0)
                t14 = -t14 + 1;
            else 
                t14 = t14 * ALPHA + 1;
            
            // calc5
            double t05 = (zij5 / (sqrt(yi0 * x05)) + yij5) * cos(x02) * ALPHA + 1;
            double t15 = (zi1j5 / cos(C * M_PI * 5) + xi1j5) * cos(x02) * ALPHA + 1;
            
            // store0
            set(z, i, j, t00);
            set(z, i + 1, j, t10);
            
            // store1
            set(z, i, j + 1, t01);
            set(z, i + 1, j + 1, t11);
            
            // store2
            set(z, i, j + 2, t02);
            set(z, i + 1, j + 2, t12);
            
            // store3
            set(z, i, j + 3, t03);
            set(z, i + 1, j + 3, t13);
            
            // store4
            set(z, i, j + 4, t04);
            set(z, i + 1, j + 4, t14);
            
            // store5
            set(z, i, j + 5, t05);
            set(z, i + 1, j + 5, t15);
        }
        
        int j = 96;
        // load 0
        double zij0 = get(z, i, j + 0);
        double yij0 = get(y, i, j + 0);
        double zi1j0 = get(z, i + 1, j + 0);
        double xi1j0 = get(x, i + 1, j + 0);
        
        // load 1
        double zij1 = get(z, i, j + 1);
        double yij1 = get(y, i, j + 1);
        double zi1j1 = get(z, i + 1, j + 1);
        double xi1j1 = get(x, i + 1, j + 1);
        
        // load 2
        double zij2 = get(z, i, j + 2);
        double yij2 = get(y, i, j + 2);
        double zi1j2 = get(z, i + 1, j + 2);
        double xi1j2 = get(x, i + 1, j + 2);
        
        // load 3
        double zij3 = get(z, i, j + 3);
        double yij3 = get(y, i, j + 3);
        double zi1j3 = get(z, i + 1, j + 3);
        double xi1j3 = get(x, i + 1, j + 3);
 
        // calc0
        double t00 = (zij0 / (sqrt(yi0 * x00)) + yij0) * cos(x00) * ALPHA + 1;
        double t10 = (zi1j0 / cos(C * M_PI * 0) + xi1j0) * cos(x00) * ALPHA + 1;
        
        // calc1
        double t01 = (zij1 / (sqrt(yi0 * x01)) + yij1) * cos(x01) * ALPHA + 1;
        double t11 = (zi1j1 / cos(C * M_PI * 1) + xi1j1) * cos(x01) * ALPHA + 1;
        
        // calc2
        double t02 = (zij2 / (sqrt(yi0 * x02)) + yij2) * cos(x02) * ALPHA + 1;
        double t12 = (zi1j2 / cos(C * M_PI * 2) + xi1j2) * cos(x02);
        if (t12 < 0)
                t12 = -t12 + 1;
            else 
                t12 = t12 * ALPHA + 1;
        
        // calc3
        double t03 = (zij3 / (sqrt(yi0 * x03)) + yij3) * cos(x00) * ALPHA + 1;
        double t13 = (zi1j3 / cos(C * M_PI * 3) + xi1j3) * cos(x00);
        if (t13 < 0)
                t13 = -t13 + 1;
            else 
                t13 = t13 * ALPHA + 1;
 
        // store0
        set(z, i, j, t00);
        set(z, i + 1, j, t10);
        
        // store1
        set(z, i, j + 1, t01);
        set(z, i + 1, j + 1, t11);
        
        // store2
        set(z, i, j + 2, t02);
        set(z, i + 1, j + 2, t12);
        
        // store3
        set(z, i, j + 3, t03);
        set(z, i + 1, j + 3, t13);
    }
    
    // for (int i = 1; i < 100; i += 2) {
    //     for (int j = 0; j < 100; j++) {
    //       int ij = i * 100 + j;
    //       if (z->data[ij] > 0)
    //           z->data[ij] = ALPHA * z->data[ij] + 1;
    //       else 
    //           z->data[ij] = -z->data[ij] + 1;
    //     }
    // }
}

void maxperformance(mat* x, mat* y, mat* z) {
    remove_cosine(x, y, z);
}

/*
* Called by the driver to register your functions
* Use add_function(func, description) to add your own functions
*/
void register_functions() {
//   add_function(&slow_performance1, "slow_performance1",1);
  // add_function(&remove_matgetset, "remove_matgetset", 1);
  // add_function(&remove_abs, "remove_abs", 1);
  // add_function(&move_iparity_out, "move_iparity_out", 1);
  // add_function(&loop_unrolling_1i, "loop_unrolling_1i", 1);
  // add_function(&loop_unrolling_full, "loop_unrolling_full", 1);
  // add_function(&final_merge_twofor, "final_merge_twofor", 1);
//   add_function(&maxperformance, "maxperformance",1);
  add_function(&remove_cosine, "remove_cosine",1);
}