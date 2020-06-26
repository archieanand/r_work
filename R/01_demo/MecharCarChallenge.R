#Linear regression model
#read file
challenge_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#perform linear regression
lm(mpg ~ `vehicle length` + `vehicle weight` + `spoiler angle` + `ground clearance` + AWD,data=challenge_table)
summary(lm(formula = mpg ~ `vehicle length` + `vehicle weight` + `spoiler angle` + `ground clearance` + AWD, data = challenge_table))
#create scatterplot with relevant factors
plt <- ggplot(challenge_table,aes(x=`spoiler angle`,y=mpg,color=AWD)) 
#plot points & regression line
plot(plt+geom_point()+geom_abline())

# Create Summary Table for Suspension Coil
#load data
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# create table
variance = var(psi)
standard_deviation = sd(psi)
summarize_suspension <- suspension_table %>% group_by(VehicleID) %>% summarize(Mean=mean(PSI),Median=median(PSI),variance=variance,sd=standard_deviation)

#comparing psi to population
t.test(log10(suspension_table$PSI),mu=mean(log10(population_psi)))