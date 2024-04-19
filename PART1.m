clc; clear all; close all;

% Load the MNIST dataset
images = load("mnist_all.mat");

% Prompt the user to choose between test and train images
i = input('1. test image\n2. train image\n');

% Check if the user's choice is valid
if i < 1 || i > 2
    disp('Wrong choice');
else
    % Enter the number of the digit you want to see
    number = input('Enter the digit you want to see: ');

    % Enter the example number
    k = input('Enter the example number: ');

    if number < 0 || number > 9
        disp('Wrong choice');
    else
        % Select the image from the dataset
        if i == 1
            filename = ['test', num2str(number)];
        else
            filename = ['train', num2str(number)];
        end

        % Load the selected image file
        img = images.(filename)(k, :);
    
        % Reshape the image to its original size (28x28 pixels)
        img = reshape(img, [28, 28])';
    
        % Display the image
        imshow(img);
    end
end
