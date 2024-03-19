function output = message_signal_quadratic(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2)
    % First Pulse:
    mt = zeros(size(tvec));
    I1 = find(tvec >= leftedge1 & tvec < rightedge1);
    
    for i = 1:(length(I1))
        j = length(I1)/2 - 1;
        t = amplitude1 * (j/(length(I1)/2))^2;        
        mt(I1(i)) = t;
    end
        
    % Second Pulse:
    I2 = find(tvec >= leftedge2 & tvec < rightedge2);
    for i = 1:(length(I2))
        j = length(I2)/2 - i;
        t = amplitude2 * (j/(length(I2)/2))^2;        
        mt(I2(i)) = t;
    end
    
    output = mt;
end
