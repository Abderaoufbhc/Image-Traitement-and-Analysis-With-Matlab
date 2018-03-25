X=imread('coins.png');
X = mat2gray(X);

f = im2double(X);
h1 = [-1 1];
h2 = [1 -1]';
Y1 = convn(f, h1);
Y2 = convn(f, h2);
Y1 = imresize(Y1,[246 300]);
Y2 = imresize(Y2,[246 300]);
Y=sqrt(abs(Y1).^2+abs(Y2).^2);
Y=mat2gray(Y);
imshow(Y),title('Y result');

figure;
bins = 0:0.001:1; 
[h]=hist(Y(:),bins); 
bar(bins,h);
%de 0 au 0.2

Y_bin = (X<=-0.2 | X>=0.6);

figure;
subplot(2,1,1);imshow(X);title('X')
subplot(2,1,2);imshow(Y_bin);title('X<=-0.2 | X>=0.6')





