 x=NULL
> x[1]=0
> for(i in 2:1000){}
> 
> for(i in 2:1000){
+ x[i]=x[i-1]+rnorm(1)}
> print(x)
>random_walk=ts(x)
>plot(random_walk,main='A random walk',ylab=' ',xlab=' Days',lwd=2)
