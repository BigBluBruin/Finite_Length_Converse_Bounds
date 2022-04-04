%--------------------------------------------------------------------------
%  This script recovers SP59 bound in Fig.1 in the following paper:
%
% A. Valembois and M. P. C. Fossorier, "Sphere-packing bounds 
% revisited for moderate block lengths," in IEEE Transactions 
% on Information Theory, vol. 50, no. 12, pp. 2998-3014, Dec. 
% 2004, doi: 10.1109/TIT.2004.838090.
%
%
%--------------------------------------------------------------------------


clc
clear

k=64;
n=128;
R= k/n;
snr_decible = 2;

addpath("../../Information-Bottleneck-toolbox/");
Figuresetting;
snr_val = 0:0.1:3;
[FER] = Shannon_SP59(n,k,snr_val);

figure
semilogy(FER(:,2),FER(:,4));
hold on 
xlabel("SNR=10 $\log_{10}\frac{E_b}{N_0}$ (dB)","Interpreter","latex");
ylabel("FER");
grid on

