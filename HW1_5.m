%Homework #1 , Solution 5

I=imread('shrey.jpg');
I=rgb2gray(I);

%256 level gray image
[I256,map256]=gray2ind(I,256);

%128 level gray image
[I128,map128]=gray2ind(I,128);

%64 level gray image
[I64,map64]=gray2ind(I,64);

figure(1),subplot(221), subimage(I),title('I'), subplot(222),subimage(I256,map256), title('I256'),subplot(223),subimage(I128,map128),title('I128'),subplot(224),subimage(I64,map64),title('I64'),pause

%32 level gray image
[I256,map256]=gray2ind(I,256);

% A 16 gray-level image:
[I16,map16]=gray2ind(I,16);

% A 8 gray-level image:
[I8,map8]=gray2ind(I,8);

figure(2),subplot(221),subimage(I),title('I'),subplot(222),subimage(I32,map32),title('I32'),subplot(223),subimage(I16,map16),title('I16'),subplot(224),subimage(I8,map8),title('I8'),pause

% A 4 gray-level image:
[I4,map4]=gray2ind(I,4);

% A 2 gray-level image:
[I2,map2]=gray2ind(I,2);

figure(3),subplot(221),subimage(I),title('I'),subplot(222),subimage(I8,map8),title('I8'),subplot(223),subimage(I4,map4),title('I4'),subplot(224),subimage(I2,map2),title('I2'),pause
