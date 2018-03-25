%%
%Charger une image dans la variable I
I = imread('pout.tif');
%%
%Afficher des informations m?moire concernant la variable I
whos I
%%
%afficher l'image avec imshow
imshow(I)
%%
%afficher l'image avec imtools
imtool(I)
%%
%afficher l'histogramme des niveaux de gris de l'image originale
figure, imhist(I)
%%
%Calculer l'histogramme ?galis? et l'afficher
I2 = histeq(I);
figure,imshow(I2)
%%
%afficher la nouvelle image dont l'histogramme a ?t? ?galis?
figure,imhist(I2)
%%
%ecrire l'image dans un fichier externe
imwrite(I2, 'pout2.png')
%%
%afficher les informations concernant l'image
imfinfo('pout2.png')

%image rice.png
%%
%Charger une image dans la variable I
I = imread('rice.png');
%%
%Afficher des informations m?moire concernant la variable I
whos I
%%
%afficher l'image avec imshow
imshow(I)
%%
%afficher l'image avec imtools
imtool(I)
%%
%afficher l'histogramme des niveaux de gris de l'image originale
figure, imhist(I)
%%
%Calculer l'histogramme ?galis? et l'afficher
I2 = histeq(I);
figure,imshow(I2)
%%
%afficher la nouvelle image dont l'histogramme a ?t? ?galis?
figure,imhist(I2)
%%
%ecrire l'image dans un fichier externe
imwrite(I2, 'rice2.tif')
%%
%afficher les informations concernant l'image
imfinfo('rice2.tif')

%image cameraman.tif
%%
%Charger une image dans la variable I
I = imread('cameraman.tif');
%%
%Afficher des informations m?moire concernant la variable I
whos I
%%
%afficher l'image avec imshow
imshow(I)
%%
%afficher l'image avec imtools
imtool(I)
%%
%afficher l'histogramme des niveaux de gris de l'image originale
figure, imhist(I)
%%
%Calculer l'histogramme ?galis? et l'afficher
I2 = histeq(I);
figure,imshow(I2)
%%
%afficher la nouvelle image dont l'histogramme a ?t? ?galis?
figure,imhist(I2)
%%
%ecrire l'image dans un fichier externe
imwrite(I2, 'cameraman2.png')
%%
%afficher les informations concernant l'image
imfinfo('cameraman2.png')


%image cell.tif
%%
%Charger une image dans la variable I
I = imread('cell.tif');
%%
%Afficher des informations m?moire concernant la variable I
whos I
%%
%afficher l'image avec imshow
imshow(I)
%%
%afficher l'image avec imtools
imtool(I)
%%
%afficher l'histogramme des niveaux de gris de l'image originale
figure, imhist(I)
%%
%Calculer l'histogramme ?galis? et l'afficher
I2 = histeq(I);
figure,imshow(I2)
%%
%afficher la nouvelle image dont l'histogramme a ?t? ?galis?
figure,imhist(I2)
%%
%ecrire l'image dans un fichier externe
imwrite(I2, 'cell.png')
%%
%afficher les informations concernant l'image
imfinfo('cell.png')


%image circuit.tif
%%
%Charger une image dans la variable I
I = imread('circuit.tif');
%%
%Afficher des informations m?moire concernant la variable I
whos I
%%
%afficher l'image avec imshow
imshow(I)
%%
%afficher l'image avec imtools
imtool(I)
%%
%afficher l'histogramme des niveaux de gris de l'image originale
figure, imhist(I)
%%
%Calculer l'histogramme ?galis? et l'afficher
I2 = histeq(I);
figure,imshow(I2)
%%
%afficher la nouvelle image dont l'histogramme a ?t? ?galis?
figure,imhist(I2)
%%
%ecrire l'image dans un fichier externe
imwrite(I2, 'circuit.png')
%%
%afficher les informations concernant l'image
imfinfo('circuit.png')


%image rice.png
%%
%Charger une image dans la variable I
I = imread('moon.tif');
%%
%Afficher des informations m?moire concernant la variable I
whos I
%%
%afficher l'image avec imshow
imshow(I)
%%
%afficher l'image avec imtools
imtool(I)
%%
%afficher l'histogramme des niveaux de gris de l'image originale
figure, imhist(I)
%%
%Calculer l'histogramme ?galis? et l'afficher
I2 = histeq(I);
figure,imshow(I2)
%%
%afficher la nouvelle image dont l'histogramme a ?t? ?galis?
figure,imhist(I2)
%%
%ecrire l'image dans un fichier externe
imwrite(I2, 'moon2.png')
%%
%afficher les informations concernant l'image
imfinfo('moon2.png')
