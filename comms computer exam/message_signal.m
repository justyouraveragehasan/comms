function output = message_signal(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2)
    % First Pulse:
    mt = zeros(size(tvec));
    I1 = find(tvec >= leftedge1 & tvec < rightedge1);
    mt(I1(1):I1(end)) = amplitude1;
    
    % Second Pulse:
    I2 = find(tvec >= leftedge2 & tvec < rightedge2);
    mt(I2(1):I2(end)) = amplitude2;
    
    output = mt;
end
