
addpath("Gonzalo_lower_bound/","SP59/")
%%
clc
clear
k=64;
n=128;
R= k/n;
snr_decible = 2;
snr_val = 0:0.1:3;
[FER_Sh] = Shannon_SP59(n,k,snr_val);
[FER_Go]=pc_awgn_lower_bound(n,k/n,snr_val);

%%
figure
semilogy(FER_Sh(:,2),FER_Sh(:,4),"DisplayName","Shannon'59 SBP");
hold on 
semilogy(FER_Go(:,2),FER_Go(:,4),"DisplayName","Gonzalo'S Converse Bound");
xlabel("$\frac{E_b}{N_0}$(dB)","Interpreter","latex");
ylabel("FER");
legend show
grid on

