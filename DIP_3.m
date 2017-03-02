    % EEEN-5337 DIGITAL IMAGE PROCESSING ASSIGNMENT-3
    % submitted by: Chakrapani Saralaya, K00272979
    % Dated: 09-16-2011
    
    % MATLAB CODE
    close all;
    clear all;
    clc;
    
    % load image file onto matlab
    I = imread('sub_img.png');
    figure();
    imshow(I);
    title('Subtracted Image: Isub = Inrst - Ibicubic'); 
    disp(' ');
    disp('Subtracted Image dimensions:');
    disp(size(I));

    % APPLYING LOG TRANSFORMATION
    J = im2double(I);
    disp('LOG TRANSFORM: s = c*log(1+r)')
    disp('')
    c = input('Enter the value of CONST,c = ');
    s = c * log10(1+J);
    figure();
    imshow(s); title('LOG TRANSFORMED IMAGE');

    % APPLYING POWER LAW (GAMMA) TRANSFORMATION TO LOG TRANSFORMED IMAGE
    disp(' ');
    disp('GAMMA TRANSFORM: s = c*(r + epsilon)^gamma');
    c2 = input('Enter the value for CONST,c = ');
    eps = input('Enter offset (epsilon) value =  ');
    gamma = input('Enter gamma value = ');
    s2 = c2 * (s + eps).^gamma;
    figure(); imshow(s2); title('GAMMA TRANSFORMED IMAGE');