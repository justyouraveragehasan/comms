% Task 1 Question 4

% Code for message signal:

%Sampling Parameters

fs=4000;
T=1/fs;   
N = 4000;   

%first message signal
leftedge1 = -2;
rightedge1 = 0;
amplitude1 = -2;

leftedge2 = 1;
rightedge2 = 2;
amplitude2 = 1;

%sinusoid 
A = 1; % amplitude
theta = 45; % phase angle in degrees
f0 = 1000; % frequency

% multiplied by sinusoids:
tvec=linspace(-10,10,N);
mt1 = message_signal(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2);
st1 = message_sinusoid(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2,A,theta,f0);

plot_sinusoid(tvec,N,fs,mt1,st1);
