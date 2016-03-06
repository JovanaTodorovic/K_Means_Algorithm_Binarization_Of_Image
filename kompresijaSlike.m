A = double(imread('6626 5.jpg'));
A=A/255;
img_size = size(A);
X = reshape(A, img_size(1) * img_size(2), 3);
K=2;
max_iters =4;
initial_centroids = kMeansInitCentroids(X, K);
[centroids, ~] = runkMeans(X, initial_centroids, max_iters);
fprintf('Program paused. Press enter to continue.\n');
fprintf('\nApplying K-Means to compress an image.\n\n');
idx = findClosestCentroids(X, centroids);
X_recovered = centroids(idx,:);
X_recovered = reshape(X_recovered, img_size(1), img_size(2), 3);
colormap gray;
sivaSlika=rgb2gray(X_recovered);
p=mean2(sivaSlika)
crnaSlika=im2bw(sivaSlika,p);
imagesc(crnaSlika);
MakeAEpsc2('66265');
fprintf('opaaa KRAJ\n');
fprintf('Program paused. Press enter to continue.\n');


