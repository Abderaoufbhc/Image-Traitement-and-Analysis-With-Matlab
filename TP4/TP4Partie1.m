%%
%1.2 Etude sous MATLAB
%Filtres gradients (a)
%X=zeros(256,256,3); %initialize
%X(25:231,25:231,1)=211;   
%X(25:231,25:231,2)=211;   
%X(25:231,25:231,3)=211;
X=imread('cameraman.tif');
X = mat2gray(X);

f = im2double(X);
g1 = [-1 1];
Y3 = convn(f, g1);
figure;
subplot(2,3,1);imshow(X);title('X')
subplot(2,3,2);imshow(mat2gray(abs(Y3)));title('mat2gray(abs(Y1))')
subplot(2,3,3);imshow(mat2gray(Y3));title('mat2gray(Y1)')
%des conteurs verticaux 
%il est sensible aux transitions 


%Filtres gradients (b)
f = im2double(X);
g2 = [1 -1]';
Y3 = convn(f, g2);
subplot(2,3,4);imshow(X);title('X')
subplot(2,3,5);imshow(mat2gray(abs(Y3)));title('mat2gray(abs(Y1))')
subplot(2,3,6);imshow(mat2gray(Y3));title('mat2gray(Y1)')
%des conteurs Horizontaux 
%il est sensible aux transitions fonc?/clair semble t il

AffichageFiltrage(X,g1)
AffichageFiltrage(X,g2)

%%
%Filtres de Sobel.
h3 = [ 1 0 -1 ; 2 0 -2 ; 1 0 -1 ];
h4 = [ 2 1 0 ; 1 0 -1 ; 0 -1 -2 ];
h5 = [ 1 2 1 ; 0 0 0 ; -1 -2 -1 ];
h6 = [ 0 1 2 ; -1 0 1 ; -2 -1 0 ];

%Filtres de Sobel. (a)
f = im2double(X);
Y3 = convn(f, h3);
figure;
subplot(4,3,1);imshow(X);title('(a): X')
subplot(4,3,2);imshow(mat2gray(abs(Y3)));title('(a): mat2gray(abs(Y1))')
subplot(4,3,3);imshow(mat2gray(Y3));title('(a): mat2gray(Y1)')
%des conteurs verticaux 
%il est sensible aux transitions 

%Filtres de Sobel. (b)
f = im2double(X);
Y3 = convn(f, h4);
subplot(4,3,4);imshow(X);title('(b): X')
subplot(4,3,5);imshow(mat2gray(abs(Y3)));title('(b): mat2gray(abs(Y1))')
subplot(4,3,6);imshow(mat2gray(Y3));title('(b): mat2gray(Y1)')
%des conteurs Horizontaux et verticaux
%il est sensible aux transitions


%Filtres de Sobel. (c)
f = im2double(X);
Y3 = convn(f, h5);
subplot(4,3,7);imshow(X);title('(c): X')
subplot(4,3,8);imshow(mat2gray(abs(Y3)));title('(c): mat2gray(abs(Y1))')
subplot(4,3,9);imshow(mat2gray(Y3));title('(c): mat2gray(Y1)')
%des conteurs Horizontaux 
%il est sensible aux transitions clair/fonc? semble t il


%Filtres de Sobel. (d)
f = im2double(X);
Y3 = convn(f, h6);
subplot(4,3,10);imshow(X);title('(d): X')
subplot(4,3,11);imshow(mat2gray(abs(Y3)));title('(d): mat2gray(abs(Y1))')
subplot(4,3,12);imshow(mat2gray(Y3));title('(d): mat2gray(Y1)')
%des conteurs Horizontaux et verticaux
%il est sensible aux transitions


AffichageFiltrage(X,h3)
AffichageFiltrage(X,h4)
AffichageFiltrage(X,h5)
AffichageFiltrage(X,h6)

%%
%Filtre laplacien.
h7 = (1/8)*[ 0 1 0 ; 1 -4 1 ; 0 1 0 ];
f = im2double(X);
Y7 = convn(f, h7);
figure;
subplot(1,3,1);imshow(X);title('X')
subplot(1,3,2);imshow(mat2gray(abs(Y7)));title('mat2gray(abs(Y1))')
subplot(1,3,3);imshow(mat2gray(Y7));title('mat2gray(Y1)')
%des conteurs Horizontaux et verticaux
%il est sensible aux transitions

AffichageFiltrage(X,h7)


%%
%Filtre LOG.
X = im2double(X);
X = imgaussfilt(X, 0.1);
h8 = fspecial('log',[15 15],1); % Filtre LOG de taille 15 x 15 et d'ecart type 1
Y7 = convn(X, h8);

AffichageFiltrage(X,h8)

figure;
subplot(3,3,1);imshow(X);title('X segma=1')
subplot(3,3,2);imshow(mat2gray(abs(Y7)));title('mat2gray(abs(Y1))')
subplot(3,3,3);imshow(mat2gray(Y7));title('mat2gray(Y1)')
%des conteurs Horizontaux et verticaux
%il est sensible aux transitions

h8 = fspecial('log',[15 15],1.5); % Filtre LOG de taille 5 x 5 et d'ecart type 1
Y7 = convn(X, h8);
subplot(3,3,4);imshow(X);title('X segma=1.5')
subplot(3,3,5);imshow(mat2gray(abs(Y7)));title('mat2gray(abs(Y1))')
subplot(3,3,6);imshow(mat2gray(Y7));title('mat2gray(Y1)')
%augmenter reussement des contours

h8 = fspecial('log',[15 15],0.5); % Filtre LOG de taille 5 x 5 et d'ecart type 1
Y7 = convn(X, h8);
subplot(3,3,7);imshow(X);title('X segma=0.5')
subplot(3,3,8);imshow(mat2gray(abs(Y7)));title('mat2gray(abs(Y1))')
subplot(3,3,9);imshow(mat2gray(Y7));title('mat2gray(Y1)')
%demenuer reussement des contours








