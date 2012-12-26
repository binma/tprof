tprof <-
function(trfper){
par(tck=-0.3,tcl=-0.3,cex=1,cex.axis=0.8,las=1,lab=c(5,5,7),mgp=c(1.6,0.3,0),mar=c(0,3,4,1),yaxs="i") 
nr<-nrow(trfper)
rname<-row.names(trfper)
cname<-as.numeric(colnames(trfper))
mat1<-matrix(rep(c(1:nr,nr),nr),nrow=nr+1,ncol=nr)
layout(mat1)

par(mar=c(0,3,0,1))
for(i in 1:(nr-1)){
  plot(-100,xlim=c(0,800),ylim=c(0,100),ylab=rname[i])
  arrows(cname,0,cname,trfper[i,],code=1,length=0)
}

par(mar=c(3,3,0,1),xaxt="s",yaxt="s")
plot(-100,xlim=c(50,600),ylim=c(0,69),ylab=name[9],xlab="length of RFs")
arrows(cname,0,cname,trfper[nr,],code=1,length=0)
}
