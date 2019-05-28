clear all
close all
a=imread('C:\Users\Dell\Pictures\clearwater.jpg');
[m n]=size(a);
disp(m)
disp(n)
t=155,l=0;
for i=1:m
for j=1:n
if a(i,j)<t
    b(i,j)=0;
else
    b(i,j)=1;
l=l+b(i,j);  
end
end
end
subplot(2,2,1),imshow(a),title('original image'),
subplot(2,2,2),imshow(b),title('thresholded image'),
xlabel(sprintf('threshold value is %g',l/(n+m)))