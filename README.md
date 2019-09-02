# OCR

im2seg that takes an image matrix of a picture with a white
background and black text and outputs a set of images of the same size for each letter.
Each such image must have the value 1 at a letter pixel and zero at the rest of the
pixels.

The code first converts all pixel values with a number lower than threshold T to a 1.
Then it loops through all the columns and calculates the column sum.
In order to find a letter the code checks for where the column sum starts being one,
the start index, and stops being one, the end index. When a letter is found the code
returns a matrix consisting of the column values between the start index and the end
index -1 (which will be the last column index with a sum of 1), where the rest of the
values are 0. After a letter is found the code continues on looking for more letters until
it has checked all the columns and stops.
After much testing of different T we got a jaccard score of 1 at T = 140, which means
that the code works perfectly at T = 140.
