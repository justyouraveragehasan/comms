function output = message_signal_triangle(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2)
    % First Pulse:
    mt = zeros(size(tvec));
    I1 = find(tvec >= leftedge1 & tvec < rightedge1);
    for i = 1:length(I1)
        %j = length(I1) - i;
        t = amplitude1*(i/length(I1)); %swap i with j to get other gradient
        mt(I1(i)) = t;
    end
   
        
    % Second Pulse:
    I2 = find(tvec >= leftedge2 & tvec < rightedge2);
    for k = 1:length(I2)
        %j = length(I2) - k;
        t = amplitude2*(k/length(I2)); %swap k with j to get other gradient
        mt(I2(k)) = t;
    end
    
    output = mt;
end