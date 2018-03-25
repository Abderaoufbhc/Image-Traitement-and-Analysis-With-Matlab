X=imread('coins.png');
X = mat2gray(X);
imshow(X)
figure;
bins = 0:0.001:1; % Liste des niveaux de gris que l'on veut considerer
[h]=hist(X(:),bins); % Cree l'histogramme pour les niveaux definis dans le vecteur bins
bar(bins,h); % Trace l'histogramme sous forme de barres

%Tmin = 0.1
%Tmax = 0.3

X_bin = (X>0.1 & X<0.3);
X_bin2 = (X<=0.1 | X>=0.25);
X_bin3 = (X>0.3 & X<1);

figure;
subplot(2,2,4);imshow(X);title('X')
subplot(2,2,1);imshow(X_bin);title('X>0.1 & X<0.3')
subplot(2,2,2);imshow(X_bin2);title('X<=0.1 | X>=0.25')
subplot(2,2,3);imshow(X_bin3);title('X>0.3 & X<1')

Y1 = mat2gray(X_bin);
Y2 = mat2gray(X_bin2);
Y3 = mat2gray(X_bin3);

Y1=medfilt2(Y1,[3,3]);
Y2=medfilt2(Y2,[3,3]);
Y3=medfilt2(Y3,[3,3]);


figure;
subplot(2,2,4);imshow(X);title('X')
subplot(2,2,1);imshow(Y1);title('X>0.1 & X<0.3')
subplot(2,2,2);imshow(Y2);title('X<=0.1 | X>=0.25')
subplot(2,2,3);imshow(Y3);title('X>0.3 & X<1')





