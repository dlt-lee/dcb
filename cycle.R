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
#   21001,21103
# 
#   
# )
# length(data_year)
# 
# data_year=matrix(data_year,ncol = 2,byrow = TRUE,dimnames = NULL)
# rows=dim(data_year)[1]
# 
# for (i in 16:rows) {
#   for (j in data_year[i,1]:data_year[i,2]) {
#     if (i>=1) {
#       dcb_L3(j,number_of_core)
#     }
#     if (i>=2) {
#       dcb_L4(j,number_of_core)
#     }
#     if (i>=3) {
#       dcb_L5(j,number_of_core)
#     }
#     if (i>=4) {
#       dcb_L6(j,number_of_core)
#     }
#     if (i>=5) {
#       dcb_L7(j,number_of_core)
#     }
#     if (i>=6) {
#       dcb_L8(j,number_of_core)
#     }
#     if (i>=7) {
#       dcb_L9(j,number_of_core)
#     }
#     if (i>=8) {
#       dcb_L10(j,number_of_core)
#     }
#     if (i>=9) {
#       dcb_L11(j,number_of_core)
#     }
#     if (i>=10) {
#       dcb_L12(j,number_of_core)
#     }
#     if (i>=11) {
#       dcb_L13(j,number_of_core)
#     }
#     if (i>=12) {
#       dcb_L14(j,number_of_core)
#     }
#     if (i>=13) {
#       dcb_L15(j,number_of_core)
#     }
#     if (i>=14) {
#       dcb_L16(j,number_of_core)
#     }
#     if (i>=15) {
#       dcb_L17(j,number_of_core)
#     }
#     if (i>=16) {
#       dcb_L18(j,number_of_core)
#       dcb_JL(j,number_of_core)
#     }
# 
#   }
# 
# }



# for (i in 21001:21098) {
#   dcb_L2(i)
#   dcb_L3(i,-1)
#   dcb_L4(i,-1)
#   dcb_L5(i,-1)
#   dcb_L6(i,-1)
#   dcb_L7(i,-1)
#   dcb_L8(i,-1)
#   dcb_L9(i,-1)
#   dcb_JL(i,-1)
# }

time_start_dcb<-Sys.time()

max_n=max(as.integer(dcb$n))
dcb_L2(max_n)
dcb_L3(max_n,number_of_core)
dcb_L4(max_n,number_of_core)
dcb_L5(max_n,number_of_core)
dcb_L6(max_n,number_of_core)
dcb_L7(max_n,number_of_core)
dcb_L8(max_n,number_of_core)
dcb_L9(max_n,number_of_core)
dcb_L10(max_n,number_of_core)
dcb_L11(max_n,number_of_core)
dcb_L12(max_n,number_of_core)
dcb_L13(max_n,number_of_core)
dcb_L14(max_n,number_of_core)
dcb_L15(max_n,number_of_core)
dcb_L16(max_n,number_of_core)
dcb_L17(max_n,number_of_core)
dcb_L18(max_n,number_of_core)
dcb_JL(max_n,number_of_core)

time_end_dcb<-Sys.time()
time_dur<-time_end_dcb-time_start_dcb
time_dur



for (i in 21002:21100) {
  result_check_JL(i)
  result_check_L18(i)
  result_check_L17(i)
  result_check_L16(i)
  result_check_L15(i)
  result_check_L14(i)
  result_check_L13(i)
  result_check_L12(i)
  result_check_L11(i)
  result_check_L10(i)
  result_check_L9(i)
  result_check_L8(i)
  result_check_L7(i)
  result_check_L6(i)
  result_check_L5(i)
  result_check_L4(i)
  result_check_L3(i)

}


