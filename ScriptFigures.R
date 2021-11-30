##################################
### Script to Generate figures ###
### by J. M. Prada ###############

library(rstudioapi)
setwd(dirname(getActiveDocumentContext()$path)) #set file location as working directory
library(vioplot)

rm(list=ls())  #Erase workspace

### Data Figure 2 load and prep
dtFig2 <- read.csv("DataFig2.csv")

value <- na.omit(c(dtFig2$Negative.Panel, dtFig2$Positive.Panel,
              dtFig2$Other.Parasites, dtFig2$Positive.Control,
              dtFig2$Negative.Control, dtFig2$Control.without.Ag
              ))
name <- factor(unlist(sapply(names(dtFig2), function(x){
  return(rep(x,length(na.omit(dtFig2[,x]))))
  })), levels = names(dtFig2)
  )
dt <- data.frame(name,value)

################
### Figure 2 ###
pdf("Fig2.pdf",width=7,height=4.64)
par(font=2, cex.axis=0.75, lwd=1.5, mar=c(2.1,2.8,1.2,0)+0.1,mgp=c(3,1,0))
boxplot(dt$value ~ dt$name,axes = F, xlab = "", ylab = "", ylim=c(0,2))

axis(1, at=1:6, labels = c("Neg. \nPanel","Pos. \nPanel","Other \nParasites",
                           "Pos. \nControl","Neg. \nControl", "No Ag. \nControl"))
axis(2, at=seq(0,2,length.out = 5))#, 

abline(v=3.5, lty="dotted")

mtext("Optical Density",side=2,cex=1,line=1.75)

dev.off()

######################################
### Example Violin plot - not used ###
vioplot(dtFig2$Negative.Panel, dtFig2$Positive.Panel,
        dtFig2$Other.Parasites, dtFig2$Positive.Control,
        dtFig2$Negative.Control, dtFig2$Control.without.Ag, names = names(dtFig2),
        col="grey50", colMed = "Black", rectCol = "Grey")
######################################

### Data Figure 3 load and prep
dtFig3 <- read.csv("DataFig3.csv")

mLine <- rowMeans(dtFig3[,3:7],na.rm = T)
sdVals <- sapply(1:nrow(dtFig3),function(x){sd(dtFig3[x,3:7], na.rm = T)})
sdError <- sdVals/sqrt(c(rep(5,8),rep(4,15))) #correct n for missing values

#####################
### Figure 3 ########
### With sd Error ###
pdf("Fig3.pdf",width=7,height=4.64)
par(font=2, cex.axis=0.75, lwd=2, mar=c(2.1,2.2,1.2,0)+0.1,mgp=c(3,0.4,0))

plot(dtFig3$week,mLine, type = "l", axes = F, xlab = "", ylab = "", ylim = c(0,1))
arrows(dtFig3$week,mLine+sdError,dtFig3$week,mLine-sdError, 
       code = 3, angle = 90, length = 0.075)

axis(1)
axis(2, at=seq(0,1,length.out = 3))

mtext("Optical Density",side=2,cex=1,line=1.2)
mtext("Weeks since infection",side=1,cex=1,line=1.2)

dev.off()

########################
### Figure 3 with sd ###
### Not used ###########
pdf("Fig3sd.pdf",width=7,height=4.64)
par(font=2, cex.axis=0.75, lwd=2, mar=c(2.1,2.2,1.2,0)+0.1,mgp=c(3,0.4,0))

plot(dtFig3$week,mLine, type = "l", axes = F, xlab = "", ylab = "", ylim = c(0,1))
arrows(dtFig3$week,mLine+sdVals,dtFig3$week,mLine-sdVals, 
       code = 3, angle = 90, length = 0.075)

axis(1)
axis(2, at=seq(0,1,length.out = 3))

mtext("Optical Density",side=2,cex=1,line=1.2)
mtext("Weeks since infection",side=1,cex=1,line=1.2)

dev.off()

