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

for (i in 18001:18153) {
  # dcb_L2(i)
  dcb_L3(i,-1)
  dcb_L4(i,-1)
  dcb_L5(i,-1)
  dcb_L6(i,-1)
  dcb_L7(i,-1)
  dcb_L8(i,-1)
  # dcb_L9(i,-1)
  # dcb_JL(i,-1)
}

