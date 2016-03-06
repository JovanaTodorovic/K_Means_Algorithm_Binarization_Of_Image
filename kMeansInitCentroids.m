function centroids = kMeansInitCentroids(X, K)
    centroids = zeros(K, size(X, 2));
    M=randperm(size(X,1),K);
    centroids=X(M,:);
end