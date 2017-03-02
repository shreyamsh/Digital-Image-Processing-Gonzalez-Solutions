
    
    % This program is to experiment with fig3.8(a) given in text book and
    % enhance the image using intensity transformations : 
        
    clc
    clear all
    close all
    I = imread('Fig3.8.tif');
    figure(); imshow(I); title('Original Image: Fig.3.8(a)');
    
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
    disp('GAMMA TRANSFORM: s = c*(r)^gamma');
    c2 = input('Enter the value for CONST,c = ');
    gamma = input('Enter gamma value = ');
    s2 = c2 * (J).^gamma;
    figure(); imshow(s2); title('GAMMA TRANSFORMED IMAGE');
