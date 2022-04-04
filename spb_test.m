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



theta_star = find_theta_star(n,R);


snr_val = 0:0.1:3;
FER = snr_val;


for ii = 1:length(snr_val)

snr_decible = snr_val(ii) ;   

A = sqrt(2*R*10^(0.1*snr_decible));

FER(1,ii) = SPB(n,theta_star,A);
FER(2,ii) = SPB_log(n,theta_star,A);

end

figure
semilogy(snr_val,FER(1,:));
hold on 
semilogy(snr_val,FER(2,:));
xlabel("SNR=10 $\log_{10}(e_b/N_o)$ dB","Interpreter","latex");
ylabel("FER");
grid on

