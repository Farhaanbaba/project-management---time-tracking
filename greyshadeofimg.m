z=imread("bridge.jpg");
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
y=rgb2gray(z);
imshow(y)
title('gray scale image');
p=imread("bridge2.jpg");
imshow(p)
r=p(:,:,1);
g=p(:,:,2);
b=p(:,:,3);
pink=zeros(size(r));
red=cat(3,r,pink,pink);
imshow(red)
green=cat(3,pink,g,pink);
figure;
imshow(green)
blue=cat(3,pink,pink,b);
figure;
imshow(blue)
q=rgb2gray(p);
imshow(q)
title('gray scale image');


