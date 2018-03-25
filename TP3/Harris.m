I = checkerboard;
corners = detectHarrisFeatures(I);
imshow(I); hold on;
plot(corners.selectStrongest(50));