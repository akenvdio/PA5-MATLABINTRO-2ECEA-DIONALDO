 # PA5 | ECE2112 | EXPERIMENT 5 | DIONALDO, PVA
---
### **INTRODUCTION TO MATLAB**
#### Submitted by Pierre Van Aken A. Dionaldo | 2ECE-A | 10.27.2026

This repository showcases the objective and detailed discussion of the experiment from Programming Assignment 5 on October 20, 2026, where the class discussed Module 5 - **Introduction to MATLAB**

---
### **Objectives**
---
At the end of this laboratory activity, the student should be able to:

1. create real and complex matrices in MATLAB;
2. distinguish transpose from complex-conjugate transpose operations;
3. express a simultaneous linear system in matrix form; and
4. solve and check a linear system using the inverse method and Cramer’s Rule.

The students are also expected to write a MATLAB script containing clearly labeled sections for both problems. Display the requested
matrices and numerical checks. Use MATLAB matrix operations and built-in functions; do not type
a computed answer directly into the output.

---
### **Programming Problems**
---
#### **A. TRANSPOSE OPERATIONS**

Define the real matrix **R** and complex matrix **Z**

For each matrix, compute and display `transpose(A)`, `A'`, and `A.'`. Below the output, answer the three analytical questions regarding transpose operations in MATLAB comments.

**CODE**
```
% Matrix R 
R = [ 5 -2  0  7;
      1  3 -4  2;
      6  0  8 -1];

R

% Matrix R transpose forms
transpose(R)

R'

R.'

% Matrix Z 
Z = [ 2+3i  -1+4i   5-2i; -3+1i   6      2+5i];
Z

% Matrix Z transpose forms
transpose(Z)

Z'

Z.'
```

**OUTPUT**
```
R = 3×4
     5     -2      0      7
     1      3     -4      2
     6      0      8     -1


ans = 4×3
      5      1      6
     -2      3      0
      0     -4      8
      7      2     -1


ans = 4×3
      5      1      6
     -2      3      0
      0     -4      8
      7      2     -1


ans = 4×3
      5      1      6
     -2      3      0
      0     -4      8
      7      2     -1


Z = 2×3 complex
      2.0000 + 3.0000i     -1.0000 + 4.0000i     5.0000 - 2.0000i
     -3.0000 + 1.0000i      6.0000 + 0.0000i     2.0000 + 5.0000i


ans = 3×2 complex
      2.0000 + 3.0000i     -3.0000 + 1.0000i
     -1.0000 + 4.0000i      6.0000 + 0.0000i
      5.0000 - 2.0000i      2.0000 + 5.0000i


ans = 3×2 complex
      2.0000 - 3.0000i     -3.0000 - 1.0000i
     -1.0000 - 4.0000i      6.0000 + 0.0000i
      5.0000 + 2.0000i      2.0000 - 5.0000i


ans = 3×2 complex
      2.0000 + 3.0000i     -3.0000 + 1.0000i
     -1.0000 + 4.0000i      6.0000 + 0.0000i
      5.0000 - 2.0000i      2.0000 + 5.0000i
```

*Answer the following in MATLAB comments below your output:*
a. Which operations give identical results for the real matrix R?
-- All three operations — transpose(R), R', and R.' — produce identical results for the real matrix R because all elements are purely real.
b. Which two operations give identical results for the complex matrix Z?
-- transpose(Z) and Z.' give identical results for the complex matrix Z. Both compute the non-conjugate transpose (array transpose).
c. What additional operation is performed by the apostrophe operator (') when the matrix contains complex entries?
-- The single apostrophe operator (') computes the complex-conjugate transpose. In addition to swapping rows and columns, it negates the imaginary component of each complex element.

The following functions and methods in this code are:
- `R = [...]`: Creates the 3x4 real matrix R
- `transpose(R)`: Computes the standard non-conjugate transpose of real matrix R.
- `R'`: Computes the complex-conjugate transpose of real matrix R.
- `R.'`: Computes the array (non-conjugate) transpose of real matrix R.
- `Z = [...]`: Creates the 2x3 complex matrix Z.
- `transpose(Z)`: Computes the standard non-conjugate transpose of complex matrix Z.
- `Z'`: Computes the complex-conjugate transpose of complex matrix Z (flips row/column indices and negates imaginary parts).
- `Z.'`: Computes the array non-conjugate transpose of complex matrix Z (flips row/column indices while preserving imaginary signs).

#### **B. TWO METHODS FOR A LINEAR SYSTEM**

Solve the simultaneous system of linear equations
Construct coefficient matrix **A** and right-hand-side vector **b**. 
Solve the system using: 
- Matrix Inverse Method `(x_inv = A^-1 b)`
- Cramer's Rule using column substitution and determinants `(x_cramer)`
- Perform numerical checks by displaying `det(A)`, `norm(x_inv - x_cramer)`, and `norm(A x_inv - b)`.\

**CODE**
```
% Coefficient matrix A  
A = [ 2 -1  3  2;
      1  4 -2  1;
      3  2  1 -1;
    -2  3  4  2];
A

% Right-hand-side vector b.
b = [16; -7; 6; 7];
b

% Determinant A
det(A)

% Inverse Method
x_inv = inv(A) * b;
x_inv

% Cramer's Rule
A1 = A; A1(:, 1) = b;
A2 = A; A2(:, 2) = b;
A3 = A; A3(:, 3) = b;
A4 = A; A4(:, 4) = b;

x_cramer = [det(A1); 
            det(A2); 
            det(A3); 
            det(A4)] / det(A);
x_cramer

% Numerical precision
norm(x_inv-x_cramer)
norm(A * x_inv - b)
