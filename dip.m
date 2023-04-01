z=imread("background2.jpg");
imshow(z)
r=z(:,:,1);
g=z(:,:,2);
b=z(:,:,3);
black=zeros(size(r));
red=cat(3,r,black,black);
imshow(red)
green=cat(3,black,g,black);
figure;
imshow(green)
blue=cat(3,black,black,b);
figure;
imshow(blue)
[p s ]=psnr(r,g)
