function idx = findClosestCentroids(X, centroids)
K = size(centroids, 1);
idx = zeros(size(X,1), 1);
m=size(X,1);
%fprintf('uso u find closest centroids');
for i=1:m
    min1=sum((X(i,:)-centroids(1,:)).^2);
    min2=sum((X(i,:)-centroids(2,:)).^2);
    if (min1<min2) idx(i)=1;
    else idx(i)=2;
   % indMin=1;
   % for j=1:K
   %     br=sum((X(i,:)-centroids(j,:)).^2);
   %     if (br<min)
   %         min=br;
   %         indMin=j;
   %     end;
   % end;
   % idx(i)=indMin;
    end;
 %   fprintf('\nIZASAOOOO');
end

