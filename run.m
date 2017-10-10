

A=imread('lena.jpg');
imwrite(A,'lenaA.pgm');
B=imread('bg3.png');
B=imresize(B,[size(A,1),size(A,2)]);
imwrite(B,'lenaB.pgm');


C=appendimages(A,B);
figure('Position', [100 100 size(C,2) size(C,1)]);
imshow(C);hold on;
set(gca,'position',[0.1 0.1,0.8 0.8])
set(gcf,'color',[1 1 1]);
set(gca,'xtick',[],'ytick',[]);

match('lenaA.pgm','lenaB.pgm');


% [image, descrips, locs] = sift('lena.pgm');   
% showkeys(image, locs);  