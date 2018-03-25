X=imread('coins.png');
X = mat2gray(X);
taille_min =2;
splitmerge(X,taille_min,@predicate);
