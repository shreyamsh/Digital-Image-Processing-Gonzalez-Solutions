    % DIGITAL IMAGE PROCESSING
    % HOMEWORK-5 MATLAB CODE
    % SUBMITTED BY CHAKRAPANI SARALAYA, SAURABH PATIL, PRANAV PHADKE
    
    % FOR A GIVEN IMAGE APPLY A 15X15 FILTER (ALL ELEMENTS OF FILTER ARE 1s)
    
    clc
    clear all
    close all
    I = imread('PIC.jpg');
    figure(); imshow(I); title('Original Image');
    
    % Convert RGB image to grayscale
    I_gray = rgb2gray(I);
    figure(); 
    subplot(2,1,1);imshow(I_gray); title('Grayscale Image');
    subplot(2,1,2); imhist(I_gray); title('Histogram of Grayscale Image');
    
    I_filter = filter_15(I_gray);
    figure(); 
    subplot(2,1,1); imshow(I_filter); title('Image after subjecting to 15x15 FILTER');
    subplot(2,1,2);imhist(I_filter); title('Histogram of Filtered Image');