source("element.R")
source("dcb_L2.R")
source("dcb_L3.R")
source("dcb_L4.R")
source("dcb_L5.R")
source("dcb_L6.R")
source("dcb_L7.R")
source("dcb_L8.R")
source("dcb_L9.R")
source("dcb_L10.R")
source("dcb_L11.R")
source("dcb_L12.R")
source("dcb_L13.R")
source("dcb_L14.R")
source("dcb_L15.R")
source("dcb_L16.R")
source("dcb_L17.R")
source("dcb_L18.R")
source("dcb_L19.R")
source("dcb_JL.R")
source("result_check_JL.R")
source("result_check_L18.R")
source("result_check_L17.R")
source("result_check_L16.R")
source("result_check_L15.R")
source("result_check_L14.R")
source("result_check_L13.R")
source("result_check_L12.R")
source("result_check_L11.R")
source("result_check_L10.R")
source("result_check_L9.R")
source("result_check_L8.R")
source("result_check_L7.R")
source("result_check_L6.R")
source("result_check_L5.R")
source("result_check_L4.R")
source("result_check_L3.R")
source("dcb_JL_L4.R")
source("dcb_JL_L5.R")
source("dcb_JL_L6.R")
source("dcb_JL_L7.R")
source("dcb_JL_L8.R")
source("dcb_JL_L9.R")
source("dcb_JL_L10.R")
source("dcb_JL_L11.R")
source("dcb_JL_L12.R")
source("dcb_JL_L13.R")
source("dcb_JL_L14.R")
source("dcb_JL_L15.R")
source("dcb_JL_L16.R")
source("dcb_JL_L17.R")
source("dcb_JL_L18.R")
source("result_check_JL_L4.R")
source("result_check_JL_L5.R")
source("result_check_JL_L6.R")
source("result_check_JL_L7.R")
source("result_check_JL_L8.R")
source("result_check_JL_L9.R")
source("result_check_JL_L10.R")
source("result_check_JL_L11.R")
source("result_check_JL_L12.R")
source("result_check_JL_L13.R")
source("result_check_JL_L14.R")
source("result_check_JL_L15.R")
source("result_check_JL_L16.R")
source("result_check_JL_L17.R")
source("Check_Result_file.R")
source("Check_Result_df.R")


# data_year = c(
#   06001,06154,
#   07001,07153,
#   08001,08153,
#   09001,09154,
#   10001,10153,
#   11001,11153,
#   12001,12154,
#   13001,13154,
#   14001,14152,
#   15001,15154,
#   16001,16153,
#   17001,17154,
#   18001,18153,
#   19001,19151,
#   20001,20134,
#   21001,21150,
#   22001,22041
# 
# 
# )
# 
# 
# length(data_year)
# 
# data_year=matrix(data_year,ncol = 2,byrow = TRUE,dimnames = NULL)
# rows=dim(data_year)[1]
# 
# for (i in 1:rows) {
#   for (j in data_year[i,1]:data_year[i,2]) {
# if (i>=1) {
#   # dcb_L3(j,number_of_core)
#   # Check_Result("dcb_data_l3.csv",j,"dcb_data_CR_L3.csv")
# 
#   
# }
# if (i>=2) {
#   # dcb_L4(j,number_of_core)
#   Check_Result("dcb_data_l4.csv",j,"dcb_data_CR_L4.csv")
# }
# if (i>=3) {
#   # dcb_L5(j,number_of_core)
#   # dcb_JL_L4(j,number_of_core)
#   Check_Result("dcb_data_l5.csv",j,"dcb_data_CR_L5.csv")
#   Check_Result("dcb_data_JL_L4.csv",j,"dcb_data_CR_JL_L4.csv")
#   
# }
# if (i>=4) {
#   # dcb_L6(j,number_of_core)
#   # dcb_JL_L5(j,number_of_core)
#   Check_Result("dcb_data_l6.csv",j,"dcb_data_CR_L6.csv")
#   Check_Result("dcb_data_JL_L5.csv",j,"dcb_data_CR_JL_L5.csv")
# }
# if (i>=5) {
#   # dcb_L7(j,number_of_core)
#   # dcb_JL_L6(j,number_of_core)
#   Check_Result("dcb_data_l7.csv",j,"dcb_data_CR_L7.csv")
#   Check_Result("dcb_data_JL_L6.csv",j,"dcb_data_CR_JL_L6.csv")
# }
# if (i>=6) {
#   # dcb_L8(j,number_of_core)
#   # dcb_JL_L7(j,number_of_core)
#   Check_Result("dcb_data_l8.csv",j,"dcb_data_CR_L8.csv")
#   Check_Result("dcb_data_JL_L7.csv",j,"dcb_data_CR_JL_L7.csv")
# }
# if (i>=7) {
#   # dcb_L9(j,number_of_core)
#   # dcb_JL_L8(j,number_of_core)
#   Check_Result("dcb_data_l9.csv",j,"dcb_data_CR_L9.csv")
#   Check_Result("dcb_data_JL_L8.csv",j,"dcb_data_CR_JL_L8.csv")
# }
# if (i>=8) {
#   # dcb_L10(j,number_of_core)
#   # dcb_JL_L9(j,number_of_core)
#   Check_Result("dcb_data_l10.csv",j,"dcb_data_CR_L10.csv")
#   Check_Result("dcb_data_JL_L9.csv",j,"dcb_data_CR_JL_L9.csv")
# }
# if (i>=9) {
#   # dcb_L11(j,number_of_core)
#   # dcb_JL_L10(j,number_of_core)
#   Check_Result("dcb_data_l11.csv",j,"dcb_data_CR_L11.csv")
#   Check_Result("dcb_data_JL_L10.csv",j,"dcb_data_CR_JL_L10.csv")
# }
# if (i>=10) {
#   # dcb_L12(j,number_of_core)
#   # dcb_JL_L11(j,number_of_core)
#   Check_Result("dcb_data_l12.csv",j,"dcb_data_CR_L12.csv")
#   Check_Result("dcb_data_JL_L11.csv",j,"dcb_data_CR_JL_L11.csv")
# }
# if (i>=11) {
#   # dcb_L13(j,number_of_core)
#   # dcb_JL_L12(j,number_of_core)
#   Check_Result("dcb_data_l13.csv",j,"dcb_data_CR_L13.csv")
#   Check_Result("dcb_data_JL_L12.csv",j,"dcb_data_CR_JL_L12.csv")
# }
# if (i>=12) {
#   # dcb_L14(j,number_of_core)
#   # dcb_JL_L13(j,number_of_core)
#   Check_Result("dcb_data_l14.csv",j,"dcb_data_CR_L14.csv")
#   Check_Result("dcb_data_JL_L13.csv",j,"dcb_data_CR_JL_L13.csv")
# }
# if (i>=13) {
#   # dcb_L15(j,number_of_core)
#   # dcb_JL_L14(j,number_of_core)
#   Check_Result("dcb_data_l15.csv",j,"dcb_data_CR_L15.csv")
#   Check_Result("dcb_data_JL_L14.csv",j,"dcb_data_CR_JL_L14.csv")
# }
# if (i>=14) {
#   # dcb_L16(j,number_of_core)
#   # dcb_JL_L15(j,number_of_core)
#   Check_Result("dcb_data_l16.csv",j,"dcb_data_CR_L16.csv")
#   Check_Result("dcb_data_JL_L15.csv",j,"dcb_data_CR_JL_L15.csv")
# }
# if (i>=15) {
#   # dcb_L17(j,number_of_core)
#   # dcb_JL_L16(j,number_of_core)
#   Check_Result("dcb_data_l17.csv",j,"dcb_data_CR_L17.csv")
#   Check_Result("dcb_data_JL_L16.csv",j,"dcb_data_CR_JL_L16.csv")
#   Check_Result("dcb_data_JL.csv",j,"dcb_data_CR_JL.csv")
# }
# if (i>=16) {
#   # dcb_L18(j,number_of_core)
#   # dcb_JL_L17(j,number_of_core)
#   Check_Result("dcb_data_l18.csv",j,"dcb_data_CR_L18.csv")
#   Check_Result("dcb_data_JL_L17.csv",j,"dcb_data_CR_JL_L17.csv")
# 
# }
#     if (i>=17) {
#       # dcb_L19(j,number_of_core)
#       # dcb_JL_L18(j,number_of_core)
#       # dcb_JL(j,number_of_core)
#       Check_Result("dcb_data_l19.csv",j,"dcb_data_CR_L19.csv")
#       Check_Result("dcb_data_JL_L18.csv",j,"dcb_data_CR_JL_L18.csv")
#       
#     }
# 
#   }
# 
# }




time_start_dcb<-Sys.time()

max_n=max(as.integer(dcb$n))

Check_Result("dcb_data_l3.csv",max_n,"dcb_data_CR_L3.csv")
Check_Result("dcb_data_l4.csv",max_n,"dcb_data_CR_L4.csv")
Check_Result("dcb_data_l5.csv",max_n,"dcb_data_CR_L5.csv")
Check_Result("dcb_data_l6.csv",max_n,"dcb_data_CR_L6.csv")
Check_Result("dcb_data_l7.csv",max_n,"dcb_data_CR_L7.csv")
Check_Result("dcb_data_l8.csv",max_n,"dcb_data_CR_L8.csv")
Check_Result("dcb_data_l9.csv",max_n,"dcb_data_CR_L9.csv")
Check_Result("dcb_data_l10.csv",max_n,"dcb_data_CR_L10.csv")
Check_Result("dcb_data_l11.csv",max_n,"dcb_data_CR_L11.csv")
Check_Result("dcb_data_l12.csv",max_n,"dcb_data_CR_L12.csv")
Check_Result("dcb_data_l13.csv",max_n,"dcb_data_CR_L13.csv")
Check_Result("dcb_data_l14.csv",max_n,"dcb_data_CR_L14.csv")
Check_Result("dcb_data_l15.csv",max_n,"dcb_data_CR_L15.csv")
Check_Result("dcb_data_l16.csv",max_n,"dcb_data_CR_L16.csv")
Check_Result("dcb_data_l17.csv",max_n,"dcb_data_CR_L17.csv")
Check_Result("dcb_data_l18.csv",max_n,"dcb_data_CR_L18.csv")
Check_Result("dcb_data_JL_L4.csv",j,"dcb_data_CR_JL_L4.csv")
Check_Result("dcb_data_JL_L5.csv",j,"dcb_data_CR_JL_L5.csv")
Check_Result("dcb_data_JL_L6.csv",j,"dcb_data_CR_JL_L6.csv")
Check_Result("dcb_data_JL_L7.csv",j,"dcb_data_CR_JL_L7.csv")
Check_Result("dcb_data_JL_L8.csv",j,"dcb_data_CR_JL_L8.csv")
Check_Result("dcb_data_JL_L9.csv",j,"dcb_data_CR_JL_L9.csv")
Check_Result("dcb_data_JL_L10.csv",j,"dcb_data_CR_JL_L10.csv")
Check_Result("dcb_data_JL_L11.csv",j,"dcb_data_CR_JL_L11.csv")
Check_Result("dcb_data_JL_L12.csv",j,"dcb_data_CR_JL_L12.csv")
Check_Result("dcb_data_JL_L13.csv",j,"dcb_data_CR_JL_L13.csv")
Check_Result("dcb_data_JL_L14.csv",j,"dcb_data_CR_JL_L14.csv")
Check_Result("dcb_data_JL_L15.csv",j,"dcb_data_CR_JL_L15.csv")
Check_Result("dcb_data_JL_L16.csv",j,"dcb_data_CR_JL_L16.csv")
Check_Result("dcb_data_JL_L17.csv",j,"dcb_data_CR_JL_L17.csv")
Check_Result("dcb_data_JL.csv",j,"dcb_data_CR_JL.csv")
dcb_L2(max_n)

L3=dcb_L3(max_n,number_of_core)
result=L3
L4=dcb_L4(max_n,number_of_core)
result=c(result,L4)

L5=dcb_L5(max_n,number_of_core)
result=c(result,result)
JL_L4=dcb_JL_L4(max_n,number_of_core)
result=c(result,JL_L4)

L6=dcb_L6(max_n,number_of_core)
result=c(result,L6)
JL_L5=dcb_JL_L5(max_n,number_of_core)
result=c(result,JL_L5)

L7=dcb_L7(max_n,number_of_core)
result=c(result,L7)
JL_L6=dcb_JL_L6(max_n,number_of_core)
result=c(result,JL_L6)

L8=dcb_L8(max_n,number_of_core)
result=c(result,L8)
JL_L7=dcb_JL_L7(max_n,number_of_core)
result=c(result,JL_L7)

L9=dcb_L9(max_n,number_of_core)
result=c(result,L9)
JL_L8=dcb_JL_L8(max_n,number_of_core)
result=c(result,JL_L8)

L10=dcb_L10(max_n,number_of_core)
result=c(result,L10)
JL_L9=dcb_JL_L9(max_n,number_of_core)
result=c(result,JL_L9)

L11=dcb_L11(max_n,number_of_core)
result=c(result,L11)
JL_L10=dcb_JL_L10(max_n,number_of_core)
result=c(result,JL_L10)

L12=dcb_L12(max_n,number_of_core)
result=c(result,L12)
JL_L11=dcb_JL_L11(max_n,number_of_core)
result=c(result,JL_L11)

L13=dcb_L13(max_n,number_of_core)
result=c(result,L13)
JL_L12=dcb_JL_L12(max_n,number_of_core)
result=c(result,JL_L12)

L14=dcb_L14(max_n,number_of_core)
result=c(result,L14)
JL_L13=dcb_JL_L13(max_n,number_of_core)
result=c(result,JL_L13)

L15=dcb_L15(max_n,number_of_core)
result=c(result,L15)
JL_L14=dcb_JL_L14(max_n,number_of_core)
result=c(result,JL_L14)

L16=dcb_L16(max_n,number_of_core)
result=c(result,L16)
JL_L15=dcb_JL_L15(max_n,number_of_core)
result=c(result,JL_L15)

L17=dcb_L17(max_n,number_of_core)
result=c(result,L17)
JL_L16=dcb_JL_L16(max_n,number_of_core)
result=c(result,JL_L16)

L18=dcb_L18(max_n,number_of_core)
result=c(result,L18)
JL_L7=dcb_JL_L17(max_n,number_of_core)
result=c(result,JL_L7)

L19=dcb_L19(max_n,number_of_core)
result=c(result,L19)
JL_L18=dcb_JL_L18(max_n,number_of_core)
result=c(result,JL_L18)

JL=dcb_JL(max_n,number_of_core)
result=c(result,JL)

m_result<-matrix(result,ncol = 9,byrow = TRUE)
write.csv(m_result,file = "result.csv")

# source("Fre_L2.R")
# 
# Sync_2022=c((max_n+1),
#              L18[3],
#              L8[4],JL_L16[4],
#              JL_L11[5],
#              L13[6],
#              L8[7],L13[7],
#              L8[8],JL[8],
#              L9[9],L13[9],L16[9],L18[9],JL_L8[9],JL_L13[9])
# 
# write.table(t(as.matrix(Sync_2022,nrow(1))),file = "2022_Sync.csv",append = TRUE,col.names = FALSE,row.names = FALSE,quote=TRUE, sep=",")

time_end_dcb<-Sys.time()
time_dur<-time_end_dcb-time_start_dcb
time_dur



# for (k in  22001:22034) {
#   dcb_JL(k,number_of_core)
# }
# 
# for (i in 22002:22023) {
#   result_check_JL_L17(i)
#   result_check_JL(i)
#   result_check_L18(i)
#   
#   result_check_JL_L16(i)
#   result_check_L17(i)
#   
#   result_check_JL_L15(i)
#   result_check_L16(i)
#   
#   result_check_JL_L14(i)
#   result_check_L15(i)
#   
#   result_check_JL_L13(i)
#   result_check_L14(i)
#   
#   result_check_JL_L12(i)
#   result_check_L13(i)
#   
#   result_check_JL_L11(i)
#   result_check_L12(i)
#   
#   result_check_JL_L10(i)
#   result_check_L11(i)
#   
#   result_check_JL_L9(i)
#   result_check_L10(i)
#   
#   result_check_JL_L8(i)
#   result_check_L9(i)
#   
#   result_check_JL_L7(i)
#   result_check_L8(i)
#   
#   result_check_JL_L6(i)
#   result_check_L7(i)
#   
#   result_check_JL_L5(i)
#   result_check_L6(i)
#   
#   result_check_JL_L4(i)
#   result_check_L5(i)
#   
#   result_check_L4(i)
#   result_check_L3(i)
#   
# }
