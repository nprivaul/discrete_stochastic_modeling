#include <random>
int main(){double p=0.52,pt;
std::default_random_engine generator;std::bernoulli_distribution bernp(p);
int count,nsamples=10000,tmax=1000000,smax=100000;
int S[tmax], cookie[smax];double maxpos;
for (int nn=0;nn<=40;nn++){count=0;pt=0.025*nn;
std::bernoulli_distribution bernpt(pt);
for (int n=1;n<=smax;n++){cookie[n]=1;}
maxpos=0;for (int n=1;n<=nsamples;n++){
cookie[0]=0;for (int n=1;n<=maxpos;n++){cookie[n]=1;}
maxpos=0;S[0]=0;for (int k=0;k<=tmax;k++){
if (cookie[S[k]]==1) {S[k+1]=S[k]+2*bernpt(generator)-1;}
else {S[k+1]=S[k]+2*bernp(generator)-1;}
if (S[k+1] == 0) {count+=1;break;}
cookie[S[k]]=0;if (S[k]>maxpos) {maxpos=S[k];}}}
printf("ptilde=%.3f\tP(T0<infty)=%.4f\n",pt,1.0*count/nsamples);}}
