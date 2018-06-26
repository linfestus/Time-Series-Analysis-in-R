> set.seed(2018)
> N=1000
> phi=0.4
> Z=rnorm(N,0,1)
> X=NULL
> X[1]=Z[1]
> for(t in 2:N){
+ X[t]=Z[t] +phi*X[t-1]
+ }
> X.ts=ts(X)
> par(mfrow=c(2,1))
> plot(X.ts,main="AR(1) Time series on White Noise with phi = 0.4")
> X.acf=acf(X.ts, main="AR(1) Time series Auto correllation plot ")


#AR(2) simulation
>set.seed(2017)
>X.ts<-arima.sim(list(ar=c(0.7,0.2)),n=1000)
> par(mfrow=c(2,1))
> plot(X.ts,main="AR(2) Time series on White Noise")
> X.acf=acf(X.ts, main="AR(2) Time series Auto correllogram ")
