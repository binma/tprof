trfper <-
function(rtfmat){
  rsum<-rowSums(rtfmat)
  per=NULL
  for(i in 1:9){
    trfper<-rtfmat[i,]*100/rsum[i]
    per<-rbind(per,trfper)
  }
}
