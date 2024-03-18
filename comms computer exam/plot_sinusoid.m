function output = plot_sinusoid(tvec,N,fs,mt,st)
figure
subplot(311)
plot(tvec,mt,'linewidth',2)
grid on;
xlim([-3 3]);set(gca,'XTick',[-3:0.5:3],'YTick',[-3:1:3]);
ylim([-3.1 3.1]);
xlabel(['time, t (seconds)'])
ylabel('m(t)')
title(['Plot of original message signal'])

subplot(312)
plot(tvec,st,'linewidth',2)
hold on 
grid on;
xlim([-3 3]);set(gca,'XTick',[-3:0.5:3],'YTick',[-3:1:3]);
ylim([-3.1 3.1]);
xlabel(['time, t (seconds)'])
ylabel('s(t)')
title(['Plot of s(t) multiplied by a sinusoid against t'])

%find spectrum
XX=abs(fft(st,N));
%must re-arrange starting at negative Nyquist frequency (-.5, normalized)
XX=fftshift(XX);XX=[XX XX(1)]; %also sticking on a duplicate for + Nyquist  
XXvec=XX;  %no special scaling done
fvec=[-.5:1/N:.5]*fs;

subplot(313)  %location of spectral plot
plot(fvec,XXvec,'r','linewidth',2)
grid on;
set(gca,'xlim',[-N/2,N/2],'ylim',[0 810],'YTick',[0:100:800]) %see most interesting region
xlabel('frequency (Hz)')
ylabel('abs(XX), spectral magnitude')
title('spectrum X(f)')

output = 0;
end

