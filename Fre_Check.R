#read data
f_record_l18<-data.frame(read.csv(file = "dcb_data_CR_L18.csv", header = FALSE))[-1,]
f_record_l17<-data.frame(read.csv(file = "dcb_data_CR_L17.csv", header = FALSE))[-1,]
f_record_l16<-data.frame(read.csv(file = "dcb_data_CR_L16.csv", header = FALSE))[-1,]
f_record_l15<-data.frame(read.csv(file = "dcb_data_CR_L15.csv", header = FALSE))[-1,]
f_record_l14<-data.frame(read.csv(file = "dcb_data_CR_L14.csv", header = FALSE))[-1,]
f_record_l13<-data.frame(read.csv(file = "dcb_data_CR_L13.csv", header = FALSE))[-1,]
f_record_l12<-data.frame(read.csv(file = "dcb_data_CR_L12.csv", header = FALSE))[-1,]
f_record_l11<-data.frame(read.csv(file = "dcb_data_CR_L11.csv", header = FALSE))[-1,]
f_record_l10<-data.frame(read.csv(file = "dcb_data_CR_L10.csv", header = FALSE))[-1,]
f_record_l9<-data.frame(read.csv(file = "dcb_data_CR_L9.csv", header = FALSE))[-1,]
f_record_l8<-data.frame(read.csv(file = "dcb_data_CR_L8.csv", header = FALSE))[-1,]
f_record_l7<-data.frame(read.csv(file = "dcb_data_CR_L7.csv", header = FALSE))[-1,]
f_record_l6<-data.frame(read.csv(file = "dcb_data_CR_L6.csv", header = FALSE))[-1,]
f_record_l5<-data.frame(read.csv(file = "dcb_data_CR_L5.csv", header = FALSE))[-1,]
f_record_l4<-data.frame(read.csv(file = "dcb_data_CR_L4.csv", header = FALSE))[-1,]
f_record_l3<-data.frame(read.csv(file = "dcb_data_CR_L3.csv", header = FALSE))[-1,]
f_record_JL<-data.frame(read.csv(file = "dcb_data_CR_JL.csv", header = FALSE))[-1,]


Fre_L3=c(
         as.integer(table(f_record_l3$V5)[2]),
         as.integer(table(f_record_l3$V6)[2]),
         as.integer(table(f_record_l3$V7)[2]),
         as.integer(table(f_record_l3$V8)[2]),
         as.integer(table(f_record_l3$V9)[2]),
         as.integer(table(f_record_l3$V10)[2]))
Fre_L4=c(
         as.integer(table(f_record_l4$V5)[2]),
         as.integer(table(f_record_l4$V6)[2]),
         as.integer(table(f_record_l4$V7)[2]),
         as.integer(table(f_record_l4$V8)[2]),
         as.integer(table(f_record_l4$V9)[2]),
         as.integer(table(f_record_l4$V10)[2]))
Fre_L5=c(
         as.integer(table(f_record_l5$V5)[2]),
         as.integer(table(f_record_l5$V6)[2]),
         as.integer(table(f_record_l5$V7)[2]),
         as.integer(table(f_record_l5$V8)[2]),
         as.integer(table(f_record_l5$V9)[2]),
         as.integer(table(f_record_l5$V10)[2]))
Fre_L6=c(
         as.integer(table(f_record_l6$V5)[2]),
         as.integer(table(f_record_l6$V6)[2]),
         as.integer(table(f_record_l6$V7)[2]),
         as.integer(table(f_record_l6$V8)[2]),
         as.integer(table(f_record_l6$V9)[2]),
         as.integer(table(f_record_l6$V10)[2]))
Fre_L7=c(
         as.integer(table(f_record_l7$V5)[2]),
         as.integer(table(f_record_l7$V6)[2]),
         as.integer(table(f_record_l7$V7)[2]),
         as.integer(table(f_record_l7$V8)[2]),
         as.integer(table(f_record_l7$V9)[2]),
         as.integer(table(f_record_l7$V10)[2]))
Fre_L8=c(
         as.integer(table(f_record_l8$V5)[2]),
         as.integer(table(f_record_l8$V6)[2]),
         as.integer(table(f_record_l8$V7)[2]),
         as.integer(table(f_record_l8$V8)[2]),
         as.integer(table(f_record_l8$V9)[2]),
         as.integer(table(f_record_l8$V10)[2]))
Fre_L9=c(
         as.integer(table(f_record_l9$V5)[2]),
         as.integer(table(f_record_l9$V6)[2]),
         as.integer(table(f_record_l9$V7)[2]),
         as.integer(table(f_record_l9$V8)[2]),
         as.integer(table(f_record_l9$V9)[2]),
         as.integer(table(f_record_l9$V10)[2]))
Fre_L10=c(
         as.integer(table(f_record_l10$V5)[2]),
         as.integer(table(f_record_l10$V6)[2]),
         as.integer(table(f_record_l10$V7)[2]),
         as.integer(table(f_record_l10$V8)[2]),
         as.integer(table(f_record_l10$V9)[2]),
         as.integer(table(f_record_l10$V10)[2]))
Fre_L11=c(
          as.integer(table(f_record_l11$V5)[2]),
          as.integer(table(f_record_l11$V6)[2]),
          as.integer(table(f_record_l11$V7)[2]),
          as.integer(table(f_record_l11$V8)[2]),
          as.integer(table(f_record_l11$V9)[2]),
          as.integer(table(f_record_l11$V10)[2]))
Fre_L12=c(
          as.integer(table(f_record_l12$V5)[2]),
          as.integer(table(f_record_l12$V6)[2]),
          as.integer(table(f_record_l12$V7)[2]),
          as.integer(table(f_record_l12$V8)[2]),
          as.integer(table(f_record_l12$V9)[2]),
          as.integer(table(f_record_l12$V10)[2]))
Fre_L13=c(
          as.integer(table(f_record_l13$V5)[2]),
          as.integer(table(f_record_l13$V6)[2]),
          as.integer(table(f_record_l13$V7)[2]),
          as.integer(table(f_record_l13$V8)[2]),
          as.integer(table(f_record_l13$V9)[2]),
          as.integer(table(f_record_l13$V10)[2]))
Fre_L14=c(
          as.integer(table(f_record_l14$V5)[2]),
          as.integer(table(f_record_l14$V6)[2]),
          as.integer(table(f_record_l14$V7)[2]),
          as.integer(table(f_record_l14$V8)[2]),
          as.integer(table(f_record_l14$V9)[2]),
          as.integer(table(f_record_l14$V10)[2]))
Fre_L15=c(
          as.integer(table(f_record_l15$V5)[2]),
          as.integer(table(f_record_l15$V6)[2]),
          as.integer(table(f_record_l15$V7)[2]),
          as.integer(table(f_record_l15$V8)[2]),
          as.integer(table(f_record_l15$V9)[2]),
          as.integer(table(f_record_l15$V10)[2]))
Fre_L16=c(
          as.integer(table(f_record_l16$V5)[2]),
          as.integer(table(f_record_l16$V6)[2]),
          as.integer(table(f_record_l16$V7)[2]),
          as.integer(table(f_record_l16$V8)[2]),
          as.integer(table(f_record_l16$V9)[2]),
          as.integer(table(f_record_l16$V10)[2]))
Fre_L17=c(
          as.integer(table(f_record_l17$V5)[2]),
          as.integer(table(f_record_l17$V6)[2]),
          as.integer(table(f_record_l17$V7)[2]),
          as.integer(table(f_record_l17$V8)[2]),
          as.integer(table(f_record_l17$V9)[2]),
          as.integer(table(f_record_l17$V10)[2]))
Fre_L18=c(
          as.integer(table(f_record_l18$V5)[2]),
          as.integer(table(f_record_l18$V6)[2]),
          as.integer(table(f_record_l18$V7)[2]),
          as.integer(table(f_record_l18$V8)[2]),
          as.integer(table(f_record_l18$V9)[2]),
          as.integer(table(f_record_l18$V10)[2]))
Fre_JL=c(
          as.integer(table(f_record_JL$V5)[2]),
          as.integer(table(f_record_JL$V6)[2]),
          as.integer(table(f_record_JL$V7)[2]),
          as.integer(table(f_record_JL$V8)[2]),
          as.integer(table(f_record_JL$V9)[2]),
          as.integer(table(f_record_JL$V10)[2]))
Fre_m=data.frame(Fre_L3,Fre_L4,Fre_L5,Fre_L6,Fre_L7,Fre_L8,
                 Fre_L9,Fre_L10,Fre_L11,Fre_L12,Fre_L13,Fre_L14,
                 Fre_L15,Fre_L16,Fre_L17,Fre_L18,Fre_JL
                 )



