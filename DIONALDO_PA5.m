% Course: ECE 2112 - Advanced Computer Programming and Algorithms
% Experiment 5: Introduction to MATLAB Programming
% File Name: DIONALDO_PA5.m
% Student Name: DIONALDO, Pierre Van Aken A.
% Section: 2ECE-A
% Date Submitted: 10/26/2026

%% PROBLEM A: TRANSPOSE OPERATIONS

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

% Answer the following in MATLAB comments below your output:
% a. Which operations give identical results for the real matrix R?
% -- All three operations — transpose(R), R', and R.' — produce
%    identical results for the real matrix R because all elements 
%    are purely real.
%
% b. Which two operations give identical results for the complex matrix Z?
% -- transpose(Z) and Z.' give identical results for the complex 
%    matrix Z. Both compute the non-conjugate transpose (array transpose).
%
% c. What additional operation is performed by the apostrophe operator (')
%    when the matrix contains complex entries?
% -- The single apostrophe operator (') computes the complex-conjugate
%    transpose. In addition to swapping rows and columns,
%    it negates the imaginary component of each complex element.

%% PROBLEM B: TWO METHODS FOR A LINEAR SYSTEM

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