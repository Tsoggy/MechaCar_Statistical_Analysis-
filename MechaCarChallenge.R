library(dplyr)
MechaCarDF <- read.csv('MechaCar_mpg.csv')
LinearMecha <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarDF)
summary(LinearMecha)

SuspensionCoilDF <- read.csv('Suspension_Coil.csv')
total_summary <- SuspensionCoilDF %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- SuspensionCoilDF %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

t.test(SuspensionCoilDF$PSI,mu=1500)

Lot1 <- subset(SuspensionCoilDF,SuspensionCoilDF$Manufacturing_Lot == "Lot1")
t.test(Lot1$PSI,mu=1500)

Lot2 <- subset(SuspensionCoilDF,SuspensionCoilDF$Manufacturing_Lot == "Lot2")
t.test(Lot2$PSI,mu=1500)

Lot3 <- subset(SuspensionCoilDF,SuspensionCoilDF$Manufacturing_Lot == "Lot3")
t.test(Lot3$PSI,mu=1500)