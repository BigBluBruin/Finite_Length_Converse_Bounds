# Sphere Packing bound


This repository gives the MATLAB Implementation of  Shannon's 1959 Sphere Packing Bound.  

---

## How to use

The use of this function is: 

```matlab
[FER] = Shannon_SP59(n,k,snr)
```



Input arguments: 

| Input argument |              meaning              |      valid value      |
| :------------: | :-------------------------------: | :-------------------: |
|       n        | blocklength (real-valued channel) |    integer scalar     |
|       k        |         input bit number          |    integer scalar     |
|      SNR       |        10log10(Es/sigma2)         | real scalar or vector |



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

will give you the k=64 n=128 snr=0-3dB.  



![](/Users/nickwang/GitRepo/Sphere_Packing_bound/SP_demo.jpg)
