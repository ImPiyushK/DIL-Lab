x = imread("/home/geu/Desktop/img1.jpeg");
y = imread("/home/geu/Desktop/img2.jpeg");

a = rgb2gray(x);
b = rgb2gray(y);

a = imresize(a,[512, 512]);
b = imresize(b, [512, 512]);

[m, n] = size(a);
for i = 1:m
  for j = 1:n
    z(i, j) = (a(i, j) + b(i, j))/2;
  end
end
  
figure, imshow(a);
figure, imshow(b);
figure, imshow(z);