


## 1개 실행

ipython main.py -- --AU=23 --fold=0 --GPU=0 --OF Horizontal --DEMO=Demo --mode_data=normal --pretrained_model /workspace/aunets/AUNets/models/fold_0/OF_Horizontal/AU23.pth 



## 12개 모든 au 실행 결과 뽑기

for au in 01 02 04 06 07 10 12 14 15 17 23 24; do ipython main.py -- --GPU=1 --mode=test --AU=$au --pretrained_model /workspace/aunets/AUNets/models/fold_0/OF_Horizontal/AU${au}.pth --OF=Horizontal --DEMO Demo; done
