genmat <-
function(ori.csv){
  # org.csv was the orignal csv file of T-RFLP results
  # integer the string length 
  str=as.integer(ori.csv[,3]+0.5)
  #area, height, and name data
  area=ori.csv[,4]
  height=ori.csv[,4]
  name=ori.csv[,2]  
  trflp=data.frame(name,str,area)
  # get each names and each length in dataset
  name1=unique(name)
  str1=sort(unique(str))
  len=length(name1)
  
  # generate the new data.frame with unique name and length
  matr=NULL
  for(i in 1:len)
  {
    col1=trflp[trflp[,1]==name1[i],2:3]
    col2=rbind(str1,area=0)
    col3=t(cbind(col2,t(col1)))
    t1=tapply(col3[,2],col3[,1],sum)
    matr=rbind(matr,t1)
  }
  
  rownames(matr)<-name1
  matr
}
