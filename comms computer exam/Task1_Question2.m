% Task 1 Question 2

% Code for message signal:

%Sampling Parameters

fs=4000;
T=1/fs;   
N = 4000;                  

% Amplitude and edge parameters

leftedge1 = 0.5;
rightedge1 = 1.5;
amplitude1 = -1;

leftedge2 = -2;
rightedge2 = -1;
amplitude2 = 1;

tvec=linspace(-10,10,N);

% Sinusoid Definition

A = 1; % amplitude
theta = 45; % phase angle in degrees
f0 = 1000; % frequency

mt = message_signal(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2);
st = message_sinusoid(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2,A,theta,f0);

plot_sinusoid(tvec,N,fs,mt,st);




