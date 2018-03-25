clear all; close all; clc
imdata = imread('lena_color.tif');  %lena.jpg
figure(1);
imshow(imdata);
title('Original Image');
%%
imdata = rgb2gray(imdata);  %%noir et blanc
figure(2); imshow(imdata); title('Gray Image');
%%
%Get Fourier Transform of an image
F = fft2(imdata);
%%
% Fourier transform of an image we can't see details
S = abs(F);
figure(3);imshow(S,[]);title('Fourier transform of an image');
%%
%get the centered spectrum just point
Fsh = fftshift(F);
figure(4);imshow(abs(Fsh),[]);title('Centered fourier transform of Image')
%%
%apply log transform
S2 = log(1+abs(Fsh));
figure(5);imshow(S2,[]);title('log transformed Image')
%%
% pour recupirée l'iamage  l'inveerce de tf
F = ifftshift(Fsh);
f = ifft2(F);
figure(6);imshow(f,[]),title('linverce');

