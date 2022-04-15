Check_Result <- function(file_in,num,file_o) {
  data_result=dcb[which(dcb$n==num),]
  data_pre=as.data.frame(read.csv(file = file_in))
  data_pre<-transform(data_pre,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
  if (row(data_pre[which(data_pre$n==num),])[1] != 1) {
    return()
  }
  data_pre[which(data_pre$n==num),]
  n_a=data_result[,2:7] %in% data_pre[,2:7]
  n_b=data_result[,8] %in% data_pre[,8]
  
  n_ab=c(num,n_a,n_b)
  print(n_ab)
  
  write.table(t(as.matrix(n_ab,nrow(1))),file = file_o,append = TRUE,col.names = FALSE,row.names = FALSE,quote=TRUE, sep=",")
  
  
}