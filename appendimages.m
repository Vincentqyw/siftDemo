% im = appendimages(image1, image2)
%
% Return a new image that appends the two images side-by-side.

function im = appendimages(image1, image2)

% Select the image with the fewest rows and fill in enough empty rows
%   to make it the same height as the other image.
rows1 = size(image1,1);
rows2 = size(image2,1);

if (rows1 < rows2)
     image1(rows2,1) = 0;
else
     image2(rows1,1) = 0;
end

% Now append both images side-by-side.
if(size(image1,3)==1)
    im = [image1 image2];   
end
if(size(image1,3)==3)
    im(:,:,1) = [image1(:,:,1) image2(:,:,1)];
    im(:,:,2) = [image1(:,:,2) image2(:,:,2)];
    im(:,:,3) = [image1(:,:,3) image2(:,:,3)];
end

