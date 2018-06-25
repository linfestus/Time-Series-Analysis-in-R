#Generate Noise
noise = rnorm(10000)

#Introduce a variable
ma_2 = NULL

for(i in 3:10000){
	ma_2[i] = noise[i] +0.7*noise[i-1] +0.2*noise[i-2]
	}
moving_avg_process = ma_2[3:10000]

moving_avg_process = ts(moving_avg_process)

par(mfrow=c(2,1))

plot(moving_avg_process, main='A moving averageproces', ylab=' ', col= 'blue')
acf(moving_avg_process, main = 'Corellogram of a moving average process of order 2 ')
