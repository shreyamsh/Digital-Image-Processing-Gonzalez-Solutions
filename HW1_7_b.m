
%Homework - 1 , Solution 7-a

clear;
clc;

img=imread('fractured_spine.tif');
%figure ,imshow(img);
%img_transform=mat2gray(img);
r=mat2gray(img);
%figure, imshow(img_transform);
%figure,imshow(r);

% Power law transformation is given by s=cr^g (g=gamma)

% Let c=1 and g=0.1

c=1;
g=0.6;

s=(c*r.^g);
figure,imshow(s);