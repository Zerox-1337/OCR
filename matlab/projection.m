

%Function that projects an image on 4 bases (4dim)
function [ up, r ] = projection( image, base1, base2, base3, base4 )
    coeff1 = imagescalar(image, base1);
    coeff2 = imagescalar(image, base2);
    coeff3 = imagescalar(image, base3);
    coeff4 = imagescalar(image, base4);
    up = coeff1*base1 + coeff2*base2 + coeff3*base3 + coeff4*base4;
    r = imagenorm(abs(image - up));
end
% Returns the norm of the image. The sum of the diagonal in A* A transpose produces all elements squared. 
function n = imagenorm( image ) 
    imageTranspose = image';
    
    n = sqrt(sum(diag(image*imageTranspose)));
end

% takes the scalar product of the vector
function scalar = imagescalar( image1, image2) 
    
    
    scalar = sum(sum(image1.*image2));
end




