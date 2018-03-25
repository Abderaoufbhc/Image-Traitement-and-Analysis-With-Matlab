%%
%images en binaires
Ibw = imread('trees_nb.tif');
imtool(Ibw)
imfinfo('trees_nb.tif')
%%
%images en niveaux de gris
Igs = imread('lena_gray.tif');
imtool(Igs)
imfinfo('lena_gray.tif')
%%
%images en couleurs indexe?es
[Iind, map] = imread('lena_color_256.gif');
imtool(Iind, map)
imfinfo('lena_color_256.gif')
%%
%images en couleurs index?es 16 couleurs (8bit)
[Iind16, map] = imread('lena_color_16.tif');
imtool(Iind16, map)
imfinfo('lena_color_16.tif')
%%
%images en couleurs index?es 16 (4bit)
[Iind16_4, map] = imread('lena_color_16.bmp');
imtool(Iind16_4, map)
imfinfo('lena_color_16.bmp')
%je ne vois pas une grande diff?rence 
% concernant l'affichage sauf que 
%la taille est presque la moit?e 
%des differences dans les propriet?s
%%
%image en vraie couleurs
Irvb = imread('lena_color_24.tif');
imtool(Irvb)
imfinfo('lena_color_24.tif')
%%
%image en vraie couleurs par couche
figure, imshow(Irvb(:,:,1))%R
figure, imshow(Irvb(:,:,2))%V
figure, imshow(Irvb(:,:,3))%B
figure, imshow(Irvb(:,:,:))%RVB
%%
%image vrais couleurs en niveaux de gris
I24gray = imread('lena_gray_24.bmp');
imtool(I24gray)
imfinfo('lena_gray_24.bmp')
%toutes les pixels ont des valeurs fixes de R V et B
%%
%image vrais couleurs en niveaux de gris
I = imread('coins.png');
BW = imbinarize(I);
figure,imshowpair(I,BW,'montage')
%%
%Binarize Image Using Locally Adaptative Thresholding
I = imread('rice.png');
BW = imbinarize(I,'adaptive');
figure,imshowpair(I,BW,'montage')
%%
%convertir une image de couleur index?s en niveaux de noir et blanc
load trees
BW = im2bw(X,map,0.4);%c'est mieux d'utiliser imbinarize
imshow(X,map),figure,imshow(BW)
%%
%Binarize Images with Darker Foreground Than Background
I = imread('printedtext.png');
figure,imshow(I)
title('Original Image')
BW = imbinarize(I,'adaptive','ForegroundPolarity','dark','Sensitivity',0.4);
figure,imshow(BW)
title('binary version of the image')
%%
%convert a grayscale image into an indexed image and then view the result.
I = imread('cameraman.tif');
[X,map] = gray2ind(I, 256);
imtool(X, map);
figure, imshowpair(I,X,'montage')
%pour les valeurs de 2 4 16 50 256
%on remarque amelioration de la qualit? de l'image
%%
%convertir une image rgb (vraies couleurs) en couleurs indexes
RGB = imread('ngc6543a.jpg');
figure('Name','RGB Image')
imagesc(RGB)
axis image
zoom(4)
%convert rgb to an indexed image with 32 colors
[IND,map] = rgb2ind(RGB,32);
figure('Name','indexed image with 32 colors')
imagesc(IND)
colormap(map)
axis image
zoom(4)
%%
%ind2gray convertir une image index? en une image en niveaux de gris
load trees
I = ind2gray(X,map);
imshow(X,map)
figure,imshow(I)
%%
%
[I,map]=imread('autumn.tif');
imshow(I);
%RGB = ind2rgb(I,map);
figure, imshow(X,map);

