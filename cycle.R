source("element.R")
source("dcb_L2.R")
source("dcb_L3.R")
source("dcb_L4.R")
source("dcb_L5.R")
source("dcb_L6.R")
source("dcb_L7.R")
source("dcb_L8.R")
source("dcb_L9.R")
source("dcb_JL.R")


data_year = c(
  07001,07153,
  08001,08153,
  09001,09154,
  10001,10153,
  11001,11153,
  12001,12154,
  13001,13154,
  14001,14152,
  15001,15154,
  16001,16153,
  17001,17154,
  18001,18153,
  19001,19151,
  20001,20134,
  21001,21095
  
)
length(data_year)

data_year=matrix(data_year,ncol = 2,byrow = TRUE,dimnames = NULL)

rows=dim(data_year)[1]

for (i in 1:rows) {
  for (j in data_year[i,1]:data_year[i,2]) {
    if (i>=1) {
      dcb_L3(j,number_of_core)
    }
    if (i>=3) {
      dcb_L4(j,number_of_core)
    }
    if (i>=5) {
      dcb_L5(j,number_of_core)
    }
    if (i>=7) {
      dcb_L6(j,number_of_core)
    }
    if (i>=9) {
      dcb_L7(j,number_of_core)
    }
    if (i>=11) {
      dcb_L8(j,number_of_core)
    }
    if (i>=13) {
      dcb_L9(j,number_of_core)
    }
    if (i>=15) {
      dcb_JL(j,number_of_core)
    }

  }
  
}



for (i in 19001:19151) {
  # dcb_L2(i)
  dcb_L3(i,-1)
  dcb_L4(i,-1)
  dcb_L5(i,-1)
  dcb_L6(i,-1)
  dcb_L7(i,-1)
  dcb_L8(i,-1)
  dcb_L9(i,-1)
  # dcb_JL(i,-1)
}

max_n=max(as.integer(dcb$n))
dcb_L2(max_n)
dcb_L3(max_n,number_of_core)
dcb_L4(max_n,number_of_core)
dcb_L5(max_n,number_of_core)
dcb_L6(max_n,number_of_core)
dcb_L7(max_n,number_of_core)
dcb_L8(max_n,number_of_core)
dcb_L9(max_n,number_of_core)
dcb_JL(max_n,number_of_core)
