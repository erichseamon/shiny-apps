library(shiny)
library(gbm); library(reshape2); library(plyr); library(ggplot2) # github version of gbm required

## Make data
#setwd("/agmesh-scenarios/scenario_52177")
dat1 <- read.csv("/srv/shiny-server/gbm_example/data/WHEAT.csv")
#dat1 <- read.csv("2001_2015_usda_gridmet_WA")
bi <- dat1$bi
pr <- dat1$pr
th <- dat1$th
psdi <- dat1$psdi
pet <- dat1$pet
erc <- dat1$erc
rmin <- dat1$rmin
rmax <- dat1$rmax
tmmn <- dat1$tmmn
tmmx <- dat1$tmmx
srad <- dat1$srad
sph <- dat1$sph
vs <- dat1$vs
fm1000 <- dat1$fm1000
fm100 <- dat1$fm100
Y <- dat1$loss
dat1 <- data.frame(Y,bi,pr,th,pet,erc,rmin,rmax,tmmn,tmmx,srad,sph,vs,fm1000,fm100)

dat2 <- read.csv("/srv/shiny-server/gbm_example/data/BARLEY.csv")
#dat1 <- read.csv("2001_2015_usda_gridmet_WA")
bi <- dat2$bi
pr <- dat2$pr
th <- dat2$th
psdi <- dat2$psdi
pet <- dat2$pet
erc <- dat2$erc
rmin <- dat2$rmin
rmax <- dat2$rmax
tmmn <- dat2$tmmn
tmmx <- dat2$tmmx
srad <- dat2$srad
sph <- dat2$sph
vs <- dat2$vs
fm1000 <- dat2$fm1000
fm100 <- dat2$fm100
Y <- dat2$loss
dat2 <- data.frame(Y,bi,pr,th,pet,erc,rmin,rmax,tmmn,tmmx,srad,sph,vs,fm1000,fm100)





















N <- 1000
X1 <- runif(N)
X2 <- 2*runif(N)
X3 <- ordered(sample(letters[1:4],N,replace=TRUE),levels=letters[4:1])
X4 <- factor(sample(letters[1:6],N,replace=TRUE))
X5 <- factor(sample(letters[1:3],N,replace=TRUE))
X6 <- 3*runif(N) 
mu <- c(-1,0,1,2)[as.numeric(X3)]

SNR <- 10 # signal-to-noise ratio
#Y <- X1^1.5 + 2 * (X2^.5) + mu
sigma <- sqrt(var(Y)/SNR)
#Y <- Y + rnorm(N,0,sigma)

# introduce some missing values
X1[sample(1:N,size=500)] <- NA
X4[sample(1:N,size=300)] <- NA

#dat1 <- data.frame(Y=Y,X1=X1,X2=X2,X3=X3,X4=X4,X5=X5,X6=X6)

## New data
N <- 1000
X1 <- runif(N)
X2 <- 2*runif(N)
X3 <- ordered(sample(letters[1:4],N,replace=TRUE))
X4 <- factor(sample(letters[1:6],N,replace=TRUE))
X5 <- factor(sample(letters[1:3],N,replace=TRUE))
X6 <- 3*runif(N) 
mu <- c(-1,0,1,2)[as.numeric(X3)]

#Y <- X1^1.5 + 2 * (X2^.5) + mu + rnorm(N,0,sigma)

#dat2 <- data.frame(Y=Y,X1=X1,X2=X2,X3=X3,X4=X4,X5=X5,X6=X6)
