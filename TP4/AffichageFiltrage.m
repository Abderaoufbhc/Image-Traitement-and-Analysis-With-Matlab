function AffichageFiltrage(X,h)
% Affiche sur une meme image un image, sa version filtree, ainsi que 
% leurs spectres en echelle lineaire et logarithmique
C=0.0001;

Y=imfilter(X,h,'replicate'); 

[M1,M2]=size(X);
M=M1*M2;

[Mh1,Mh2]=size(h);
Mh=Mh1*Mh2;
Z_freq=mat2gray([abs(fftshift(fft2(X)/M)) abs(fftshift(fft2(Y)/M)) abs(fftshift(fft2(h,M1,M2)/Mh))]);
Z_freqlog=mat2gray([10*log10(C+abs(fftshift(fft2(X)/M))) 10*log10(C+abs(fftshift(fft2(Y)/M))) 10*log10(C+abs(fftshift(fft2(h,M1,M2)/Mh)))]);

figure
imshow([X Z_freq ; Y Z_freqlog])
hold on
text(M2-110, 7,'Image originelle X','Color','r')
text(2*M2-110, 7,'Spectre X lin?aire','Color','r')
text(3*M2-110, 7,'Spectre Y lin?aire','Color','r')
text(4*M2-110, 7,'Spectre H lin?aire','Color','r')

text(M2-110, 7+M1,'Image filtr?e Y','Color','r')
text(2*M2-110, 7+M1,'Spectre X logarithmique','Color','r')
text(3*M2-110, 7+M1,'Spectre Y logarithmique','Color','r')
text(4*M2-110, 7+M1,'Spectre H logarithmique','Color','r')
line([M1+0.5 M1+0.5],[1 4*M2],'Color','r')
line([2*M1+0.5 2*M1+0.5],[1 4*M2],'Color','r')
line([3*M1+0.5 3*M1+0.5],[1 4*M2],'Color','r')
line([1 4*M1],[M2+0.5 M2+0.5],'Color','r')