X = imread("/home/geu/Desktop/img.jpeg");
x = rgb2gray(X);
[r c] = size(x);
L=255;
cc=input("Enter the values for C==>");
ep=input("Enter the value for Gamma==>")
for i=1 : r
  for j=1 : c
    A(i, j) = cc*power(x(i,j), ep);
    B(i, j)=L-1-x(i, j);
  end
end
subplot(1, 2, 1), imshow(A, []);
subplot(1, 2,2), imshow(B, []);
