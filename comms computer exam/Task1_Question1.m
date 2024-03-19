% Task 1 Question 1

% Code for message signal:

%Sampling Parameters

fs=4000;
T=1/fs;   
N = 4000;                  

% Amplitude and edge parameters

leftedge1 = 0.5;
rightedge1 = 1.5;
amplitude1 = 2;

leftedge2 = -1.4;
rightedge2 = -0.8;
amplitude2 = 1.4;

tvec=linspace(-10,10,N);

mt = message_signal(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2);
%mt = message_signal_quadratic(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2);
%mt = message_signal_triangle(tvec,leftedge1,rightedge1,amplitude1,leftedge2,rightedge2,amplitude2);



figure
subplot(211)
plot(tvec,mt,'linewidth',2)
grid on;
xlim([-3 3]);set(gca,'XTick',[-3:0.5:3],'YTick',[-3:1:3]);
ylim([-3.1 3.1]);
xlabel(['time, t (seconds)'])
ylabel('m(t)')
title(['Plot of m(t) against t'])

%find spectrum
XX=abs(fft(mt,N));
%must re-arrange starting at negative Nyquist frequency (-.5, normalized)
XX=fftshift(XX);XX=[XX XX(1)]; %also sticking on a duplicate for + Nyquist  
XXvec=XX;  %no special scaling done
fvec=[-.5:1/N:.5]*fs;

subplot(212)  %location of spectral plot
plot(fvec,XXvec,'r','linewidth',2)
grid on;
set(gca,'xlim',[-100 100],'ylim',[0 400],'YTick',[0 100 200 300 400]) %see most interesting region
xlabel('frequency (Hz)')
ylabel('abs(XX), spectral magnitude')
title('spectrum X(f)')







