Check_Result_df <- function(df_in,num,df_out) {
  data_result=dcb[which(dcb$n==num),]
  da=data_pre=df_in
  data_pre<-transform(data_pre,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
  data_pre_num=data_pre[which(data_pre$n==num),]
  if (!is.na(row(data_pre_num)[1])) {
    n_a=data_pre_num[,2:7] %in% data_result[,2:7]
    n_b=data_pre_num[,8] %in% data_result[,8]
    
    n_ab=c(num,n_a,n_b)
    print(n_ab)
    
    write.table(t(as.matrix(n_ab,nrow(1))),file = df_out,append = TRUE,col.names = FALSE,row.names = FALSE,quote=TRUE, sep=",")
    
  }
  
  
}