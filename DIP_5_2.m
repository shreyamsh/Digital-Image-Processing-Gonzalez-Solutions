% DIGITAL IMAGE PROCESSING
% HOMEWORK-5 MATLAB CODE
% SUBMITTED BY CHAKRAPANI SARALAYA, SAURABH PATIL, PRANAV PHADKE
% APPLYING LAPLACIAN FILTER ON A BLURRY IMAGE

clear all
close all
clc
% Read image into MATLAB
I_blur = imread('blur.jpg');
figure(); imshow(I_blur); title('BLURRY IMAGE'); 

% Define laplacian mask
lap_mask = [1 1 1 ; 1 -8 1 ; 1 1 1];
lap_mask2 = [0 1 0 ; 1 -4 1 ; 0 1 0];


% laplacian image
lap_I = sp_filter1(I_blur,lap_mask);
lap_I2 = sp_filter1(I_blur,lap_mask2);
figure(); imshow(lap_I); title('LAPLACIAN FILTERED IMAGE using FILTER -8');
figure(); imshow(lap_I2); title('LAPLACIAN FILTERED IMAGE using FILTER -4');

% Sharpening blurry image
I_sharp = I_blur - lap_I;
I_sharp4 = I_blur - lap_I2;
figure(); imshow(I_sharp); title('IMAGE SHARPENED using -8 ');
figure(); imshow(I_sharp4); title('IMAGE SHARPENED using -4 ');