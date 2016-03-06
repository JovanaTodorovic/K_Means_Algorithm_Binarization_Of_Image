function centroids = computeCentroids(X, idx, K)
[m n] = size(X);
centroids = zeros(K, n);
for i=1:K
    col=find(idx==i);
    centroids(i,:)=sum(X(col,:))/size(col,1);
end;
end