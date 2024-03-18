function output = message_sinusoid(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2,A,theta,f0)
mt = message_signal(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2);
sinusoid = A*cos(2*pi*f0*tvec + theta*pi/180);
st = sinusoid .* mt;
output = st;
end

