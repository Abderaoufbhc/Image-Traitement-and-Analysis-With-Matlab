kmeans('CR-MONO1-10-chest',5)
%%
warning off
[x,map] = dicomread('MR-MONO2-16-knee');
imshow(x,map);
info = dicominfo('MR-MONO2-16-knee');
info
a = rgb2gray(imread('MR-MONO2-16-knee.jpg'));
figure;
imshow(a);
imdata = reshape(a,[],1);
imdata = double(imdata);
[IDX nn] = kmeans(imdata,4);
imIDX = reshape(IDX,size(a));
figure
imshow(imIDX,[]),title('image index');
figure;
subplot(2,2,1),imshow(imIDX==1,[]);
subplot(2,2,2),imshow(imIDX==2,[]);
subplot(2,2,3),imshow(imIDX==3,[]);
subplot(2,2,4),imshow(imIDX==4,[]);
%%
[x,map] = dicomread('MR-MONO2-12-shoulder');
imshow(x,map);
info = dicominfo('MR-MONO2-12-shoulder');
info
a = rgb2gray(imread('MR-MONO2-12-shoulder.jpg'));
figure;
imshow(a);
imdata = reshape(a,[],1);
imdata = double(imdata);
[IDX nn] = kmeans(imdata,4);
imIDX = reshape(IDX,size(a));
figure
imshow(imIDX,[]),title('image index');
figure;
subplot(2,2,1),imshow(imIDX==1,[]);
subplot(2,2,2),imshow(imIDX==2,[]);
subplot(2,2,3),imshow(imIDX==3,[]);
subplot(2,2,4),imshow(imIDX==4,[]);
%%
[x,map] = dicomread('CT-MONO2-16-chest');
imshow(x,map);
info = dicominfo('CT-MONO2-16-chest');
info
a = rgb2gray(imread('CT-MONO2-16-chest.jpg'));
figure;
imshow(a);
imdata = reshape(a,[],1);
imdata = double(imdata);
[IDX nn] = kmeans(imdata,4);
imIDX = reshape(IDX,size([a]));
figure
imshow(imIDX,[]),title('image index');
figure;
subplot(2,2,1),imshow(imIDX==1,[]);
subplot(2,2,2),imshow(imIDX==2,[]);
subplot(2,2,3),imshow(imIDX==3,[]);
subplot(2,2,4),imshow(imIDX==4,[]);
%%
[x,map] = dicomread('CT-MONO2-16-ankle');
imshow(x,map);
info = dicominfo('CT-MONO2-16-ankle');
info
a = rgb2gray(imread('CT-MONO2-16-ankle.jpg'));
figure;
imshow(a);
imdata = reshape(a,[],1);
imdata = double(imdata);
[IDX nn] = kmeans(imdata,4);
imIDX = reshape(IDX,size([a]));
figure
imshow(imIDX,[]),title('image index');
figure;
subplot(2,2,1),imshow(imIDX==1,[]);
subplot(2,2,2),imshow(imIDX==2,[]);
subplot(2,2,3),imshow(imIDX==3,[]);
subplot(2,2,4),imshow(imIDX==4,[]);
%%
