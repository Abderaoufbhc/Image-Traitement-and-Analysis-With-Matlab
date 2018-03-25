h=imread ('cameraman.tif');
s= strel('square',15) ;
i=imerode(h,s);
j=imdilate(h,s);
figure(1); subplot(1,3,1); imshow(h);
subplot(1,3,2); imshow(i);
subplot(1,3,3); imshow(j);
%%
h=imread ('coins.png');
h=imbinarize(h);
s= strel('disk',15) ;
i=imerode(h,s);
j=imdilate(h,s);
figure(1); subplot(1,3,1); imshow(h);
subplot(1,3,2); imshow(i);
subplot(1,3,3); imshow(j);