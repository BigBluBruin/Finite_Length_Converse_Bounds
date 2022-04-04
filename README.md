# Finite Length Converse Bounds Under AGWN Channel

This repository gives the following converse bounds under addtive Gausian white noise (AWGN) channel:

- Shannon's 1959 Sphere Packing Bound
- Gonzela's Converse bound for power-constrained AWGN channel.

---

## How to use

The use of this function is: 

```matlab
[FER] = Shannon_SP59(n,k,snr)
[FER] = pc_awgn_lower_bound(n,rate,snr_val);
```



Input arguments: 

| Input argument |                   meaning                    |      valid value      |
| :------------: | :------------------------------------------: | :-------------------: |
|       n        |      blocklength (real-valued channel)       |    integer scalar     |
|       k        |               input bit number               |    integer scalar     |
|      rate      | transmission rate k/n [bit/real channel use] |      real scalr       |
|      SNR       |              10log10(Es/sigma2)              | real scalar or vector |



output

| output value | meaning                                                      |
| :----------: | :----------------------------------------------------------- |
|     FER      | column 1: SNR=10log10(Es/sigma2)<br />column 2: EbN0(dB)=10log10(Eb/N0)<br />column 3: EsN0(dB)=10log10(Es/N0)<br />column 4: Block (frame) error rate |

---

## Demo

Run:

```matlab
demo.m 
```

will give you the Shannon'59 SPB and Gonzalo k=64 n=128 snr=0-3dB.  



![](https://github.com/BigBluBruin/Finite_Length_Converse_Bounds/blob/main/demo.jpg?raw=true)



