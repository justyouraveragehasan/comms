% Task 1 Question 3

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

%second message signal
leftedge3 = -2;
rightedge3 = 0;
amplitude3 = 2;

leftedge4 = 2;
rightedge4 = 3;
amplitude4 = 1;

%third message signal
leftedge5 = -1;
rightedge5 = 0.5;
amplitude5 = -2;

leftedge6 = 1;
rightedge6 = 2;
amplitude6 = 3;


%sinusoid 
A = 1; % amplitude
theta = 45; % phase angle in degrees
f0 = 1000; % frequency

% multiplied by sinusoids:
tvec=linspace(-10,10,N);
mt1 = message_signal(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2);
mt2 = message_signal(tvec,leftedge3,rightedge3,amplitude3,leftedge4,rightedge4,amplitude4);
mt3 = message_signal(tvec,leftedge5,rightedge5,amplitude5,leftedge6,rightedge6,amplitude6);

st1 = message_sinusoid(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2,A,theta,f0);
st2 = message_sinusoid(tvec,leftedge3,rightedge3,amplitude3,leftedge4,rightedge4,amplitude4,A,theta,f0);
st3 = message_sinusoid(tvec,leftedge5,rightedge5,amplitude5,leftedge6,rightedge6,amplitude6,A,theta,f0);

plot_sinusoid(tvec,N,fs,mt1,st1);
plot_sinusoid(tvec,N,fs,mt2,st2);
plot_sinusoid(tvec,N,fs,mt3,st3);
