%Homework - 1 , Solution 7-a

clear;
clc;

img=imread('fractured_spine.tif');
figure ,imshow(img);
%img_transform=mat2gray(img);
r=mat2gray(img);
%figure, imshow(img_transform);
figure,imshow(r);

%log transformation is given by s=clog(1+r)

% Let c=1
c=1;

s=c*log(1+r);
figure, imshow(s);

% Let c =1.5

c=1.5 ;
s=c*log(1+r);
figure, imshow(s);

% Let c=2
c=1;
s=c*log(1+r);
figure, imshow(s);

% Let c=3
c=1;
s=c*log(1+r);
figure, imshow(s);

% Let c=1.8
c=1.8;
s=c*log(1+r);
figure, imshow(s);