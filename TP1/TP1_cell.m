%%Charger une image dans la variable I
I = imread('cell.tif');
%%Afficher des informations mémoire concernant la variable I
whos I
%%afficher l'image avec imshow
imshow(I)
%%afficher l'image avec imtools
imtool(I)
%%afficher l'histogramme des niveaux d gris de l'image originale
figure, imhist(I)
%%Calculer l'histogramme égalisé et l'afficher
I2 = histeq(I);
figure, imshow(I2)
%%afficher la nouvelle image dont l'histogramme a été égalisé
figure, imhist(I2)
%%Ecrire l'image dans un fichier externe
imwrite(I2,'pout2.png')
%%Afficher les informations concernant l'image
imfinfo('pout2.png')
