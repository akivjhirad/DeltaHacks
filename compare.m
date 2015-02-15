function y = compare(img1, img2, count)
    image1 = imread(img1);
    imageofdoubles1=double(image1);
    size1 = size(imageofdoubles1);

    image2 = imread(img2);
    imageofdoubles2=double(image2);   
    size2 = size(imageofdoubles2);
    
    if (size1(1) < size2(1))
        x_dim = size1(1);
    else
        x_dim = size2(1);
    end
    
    if (size1(2) < size2(2))
        y_dim = size1(2);
    else
        y_dim = size2(2);
    end
    
    corr = 0;
    for i = 1:x_dim
        for j = 1:y_dim
            if (imageofdoubles1(i,j) == imageofdoubles2(i,j))
                corr = corr + 1;
            end
        end
    end
    
    if (corr >= 740)
        y = count + 1;
    else
        y = count;
    end
    
    
    
    
    
    
    
