#Set domain
domain <- seq(-10,10,length.out = 200)

#Plots
data1 <- 0.5*(dnorm(domain, 1,1))/(0.5*(dnorm(domain,1,1) + 0.5*dnorm(domain,2,1)))
plot(domain, data1, type="l", col="blue", lwd=5, xlab="y", ylab = "Density",
     main="Posterior Density with Sigma = 1")

data2 <- 0.5*(dnorm(domain, 1,2))/(0.5*(dnorm(domain,1,2) + 0.5*dnorm(domain,2,2)))
plot(domain, data2, type="l", col="green", lwd=5, xlab="y", ylab = "Density", 
     main="Posterior Density with Sigma = 2")

data3 <- 0.5*(dnorm(domain, 1,3))/(0.5*(dnorm(domain,1,3) + 0.5*dnorm(domain,2,3)))
plot(domain, data3, type="l", col="red", lwd=5, xlab="y", ylab = "Density",
     main="Posterior Density with Sigma = 3")

data4 <- 0.5*(dnorm(domain, 1,4))/(0.5*(dnorm(domain,1,4) + 0.5*dnorm(domain,2,4)))
plot(domain, data4, type="l", col="black", lwd=5, xlab="y", ylab = "Density",
     main="Posterior Density with Sigma = 4")

data5 <- 0.5*(dnorm(domain, 1,5))/(0.5*(dnorm(domain,1,5) + 0.5*dnorm(domain,2,5)))
plot(domain, data5, type="l", col="darkmagenta", lwd=5, xlab="y", ylab = "Density",
     main="Posterior Density with Sigma = 5")

data6 <- 0.5*(dnorm(domain, 1,6))/(0.5*(dnorm(domain,1,6) + 0.5*dnorm(domain,2,6)))
plot(domain, data6, type="l", col="purple", lwd=5, xlab="y", ylab = "Density",
     main="Posterior Density with Sigma = 6")

data7 <- 0.5*(dnorm(domain, 1,7))/(0.5*(dnorm(domain,1,7) + 0.5*dnorm(domain,2,7)))
plot(domain, data7, type="l", col="darkgray", lwd=5, xlab="y", ylab = "Density",
     main="Posterior Density with Sigma = 7")

data8 <- 0.5*(dnorm(domain, 1,8))/(0.5*(dnorm(domain,1,8) + 0.5*dnorm(domain,2,8)))
plot(domain, data8, type="l", col="cyan4", lwd=5, xlab="y", ylab = "Density",
     main="Posterior Density with Sigma = 8")

data9 <- 0.5*(dnorm(domain, 1,9))/(0.5*(dnorm(domain,1,9) + 0.5*dnorm(domain,2,9)))
plot(domain, data9, type="l", col="darkred", lwd=5, xlab="y", ylab = "Density",
     main="Posterior Density with Sigma = 9")

data10 <- 0.5*(dnorm(domain, 1,10))/(0.5*(dnorm(domain,1,10) + 0.5*dnorm(domain,2,10)))
plot(domain, data10, type="l", col="darkgreen", lwd=5, xlab="y", ylab = "Density",
     main="Posterior Density with Sigma = 10")

#Combine all plots
library(ggplot2)
df = data.frame(y=c(replicate(10, "y")),Probability=c(data1,data2,data3, data4, 
                                                        data5, data6, data7, data8, 
                                                        data9, data10),
                sigma=rep(c("sigma = 1","sigma = 2","sigma = 3","sigma = 4",
                            "sigma = 5", "sigma = 6", "sigma = 7", "sigma = 8",
                            "sigma = 9", "sigma = 10"),each=200))

ggplot(df,aes(x=y,y=Probability,color=sigma))+geom_line()+theme_bw()+ylab("p(theta=1|y)")
