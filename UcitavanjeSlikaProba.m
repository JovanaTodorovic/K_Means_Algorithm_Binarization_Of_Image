folder = 'D:\Machine learning\DECIM';   %upisi ime fajla gde ces da zapamtis folder i ubacujes slike
n = 1;     %podesi indeks do kog se ucitavaju slike
for k = 1 : n%od kog do kog indeksa se koriste slike
    baseFileName = sprintf('P292.JPG', k); %oblik imena slike
    display(baseFileName);            %cisto da vidis dal si lepe slike ubacio
    fullFileName = fullfile(folder, baseFileName);
    A = double(imread(fullFileName));    
    A=A/255; 
    img_size = size(A);
    colormap gray;
    sivaSlika=rgb2gray(A);
    p=mean2(sivaSlika);
    crnaSlika=im2bw(sivaSlika,p);
    imwrite(crnaSlika,'D:\Machine learning\DECIM\P292Prag.PNG');
    X = reshape(A, img_size(1) * img_size(2), 3);
    K=2;
    max_iters =7;
    initial_centroids = kMeansInitCentroids(X, K);
    [centroids, ~] = runkMeans(X, initial_centroids, max_iters);
    fprintf('\nKompresija slike i njeno memorisanje\n');
    idx = findClosestCentroids(X, centroids);
    X_recovered = centroids(idx,:);
    X_recovered = reshape(X_recovered, img_size(1), img_size(2), 3);
    colormap gray;
    sivaSlika=rgb2gray(X_recovered);
    p=mean2(sivaSlika);
    crnaSlika=im2bw(sivaSlika,p);
     imwrite(crnaSlika,'D:\Machine learning\DECIM\P292K.PNG');
    fprintf('opaaa KRAJ\n'); %obradjena slika :D
end 