%%
%echantillonage
im = rgb2gray(imread('./Image Processing TP 1/lena.jpg'));
im1 = imresize(im, [1024 1024]);
im2 = imresize(im, [1024 1024]/2);
im3 = imresize(im, [1024 1024]/4);
im4 = imresize(im, [1024 1024]/8);
im5 = imresize(im, [1024 1024]/16);
im6 = imresize(im, [1024 1024]/32);
im7 = imresize(im, [1024 1024]/64);

figure('Name','1024'),imshow(im1)
figure('Name','512'),imshow(im2)
figure('Name','256'),imshow(im3)
figure('Name','128'),imshow(im4)
figure('Name','64'),imshow(im5)
figure('Name','32'),imshow(im6)
figure('Name','16'),imshow(im7)

figure;
subplot(2,3,1);imshow(im1);subplot(2,3,2);imshow(im2);
subplot(2,3,3);imshow(im3);subplot(2,3,4);imshow(im5);
subplot(2,3,5);imshow(im5);subplot(2,3,6);imshow(im6);
%%
%Quantifiocation
im = imread('./Image Processing TP 1/lena.jpg');
im = rgb2gray(imread('./Image Processing TP 1/lena.jpg'));
im1 = imresize(im, [1024 1024]);
im2 = gray2ind(im1, power(2,7));
im3 = gray2ind(im1, power(2,6));
im4 = gray2ind(im1, power(2,5));
im5 = gray2ind(im1, power(2,4));
im6 = gray2ind(im1, power(2,3));
im7 = gray2ind(im1, power(2,2));
im8 = gray2ind(im1, power(2,1));

figure;
subplot(2,4,1);imshow(im1,[]);subplot(2,4,2);imshow(im2,[])
subplot(2,4,3);imshow(im3,[]);subplot(2,4,4);imshow(im4,[])
subplot(2,4,5);imshow(im5,[]);subplot(2,4,6);imshow(im6,[])
subplot(2,4,7);imshow(im7,[]);subplot(2,4,8);imshow(im8,[])
