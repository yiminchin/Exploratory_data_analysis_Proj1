elec<-read.table("household_power_consumption.txt",skip=grep("31/1/2007;23:59:00",readLines("household_power_consumption.txt")),nrows=2880,sep=";")
elec_datetime<-paste(elec$V1, elec$V2)
elec$V2<-strptime(elec_datetime,"%d/%m/%Y %H:%M:%S")
elec$V1<-as.Date(elec_datetime,"%d/%m/%Y")

png(file="plot2.png", width = 480, height = 480)
plot(elec$V2,elec$V3,type='l',ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
