size = 5;
quant = 15;
f = @(x) 4.*x.*(1-x);

A = zeros(size, size);

for i = 1:size
    A(:, i) = f((i-1)./(size-1));
end
(0:15)./ 15
A_quant = imquantize(A,(0:quant) ./ quant)

subplot(1,2,1);
imshow(mat2gray(A));
subplot(1,2,2);
imshow(mat2gray(A_quant));


