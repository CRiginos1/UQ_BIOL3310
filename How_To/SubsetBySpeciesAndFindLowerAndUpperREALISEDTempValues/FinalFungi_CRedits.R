
##STUDENT CODE WITH CR COMMENTS 

#Final Project Report#

#NOT SURE YOU NEED THE LIBRARIES BELOW....
# install.packages(c("sf", "raster", "rnaturalearth", "ALA4R"), dependencies = TRUE)
# library(sf)
# library(raster)
# library(rnaturalearth) 
# library(ALA4R) 

#Open and look at the data file#
names("Fungi_bio_records")
Fungibioclim <- read.csv("Fungi_bio_records.csv")  #CR - I changed to "read.csv" as "read_csv" corresponds to tidyverse syntax and you did not load tidyverse!
names(Fungibioclim)

#Relabel the occurences based on the three climate variables#
Fungibioclim$annual_temp <- Fungibioclim$el874
Fungibioclim$annual_precip <- Fungibioclim$el713
Fungibioclim$annual_humid <- Fungibioclim$el728

#Remove all na datapoints#
Fungibioclim <- Fungibioclim[!is.na(Fungibioclim$annual_temp), ]
Fungibioclim <- Fungibioclim[!is.na(Fungibioclim$annual_precip), ]
Fungibioclim <- Fungibioclim[!is.na(Fungibioclim$annual_humid), ]

###Removing outliers###
#Remake table with necessary variables and values (Species occurrences and three climate variables)#
Fungibioclim <- Fungibioclim[c("scientificName", "annual_temp", "annual_precip", "annual_humid")]


## HIGHLY RECOMMEND SPLITING BY SPECIES FIRST AND THEN REMOVING OUTLIERS

#first, look at your species
summary(Fungibioclim$scientificName)  #need to change them to factors
Fungibioclim$scientificName<-as.factor(Fungibioclim$scientificName)
summary(Fungibioclim$scientificName)   #recommend getting rid of Hygrocybe conica subspecies

#you can subset by species
astatogala_annual_temp<-Fungibioclim[Fungibioclim$scientificName=="Hygrocybe astatogala","annual_temp"]

#then remove outliers - quantiles is fine but I would define by lower and upper 2.5 or 5%, not 25%
astatogala_temp_low_5<-quantile(astatogala_annual_temp, probs = 0.05)  #so 7.5 is your lower 90 confidence inteval bounds for REALISE temp!

#with the above code, you should be able to figure out your upper and lower values per species!
# you could be fancy and use for() loops, but long hand is fine ;-)


#ORIGINAL CODE BELOW 

# ##Remove for temperature##
# #Look at boxplot quartile value#
# ecdf(Fungibioclim$annual_temp)
# 
# #Remove all the outliers from temperature#
# Q1 <- quantile(Fungibioclim$annual_temp, 0.25)
# Q3 <- quantile(Fungibioclim$annual_temp, 0.75)
# IQR <- IQR(Fungibioclim$annual_temp)
# Fungi_Temp_CLeaned <- subset(Fungibioclim, Fungibioclim$annual_temp > (Q1 - 1.5*IQR) & Fungibioclim$annual_temp > (Q3 + 1.5*IQR)) 
# 
# #Visualise it in a boxplot#
# boxplot(Fungi_Temp_CLeaned$annual_temp ~ Fungi_Temp_CLeaned$scientificName)
# #Visualise it in a histogram#
# hist(Fungi_Temp_CLeaned$annual_temp)
# 
# ##Remove for precipitation##
# #Look at boxplot quartile value#
# ecdf(Fungibioclim$annual_precip)
# 
# #Remove all the outliers from Precipitation#
# Q1 <- quantile(Fungibioclim$annual_precip, 0.25)
# Q3 <- quantile(Fungibioclim$annual_precip, 0.75)
# IQR <- IQR(Fungibioclim$annual_precip)
# Fungi_Precip_CLeaned <- subset(Fungibioclim, Fungibioclim$annual_precip > (Q1 - 1.5*IQR) & Fungibioclim$annual_precip > (Q3 + 1.5*IQR)) 
# 
# #Visualise it in a boxplot#
# boxplot(Fungi_Precip_CLeaned$annual_precip ~ Fungi_Precip_CLeaned$scientificName)
# #Visualise it in a histogram#
# hist(Fungi_Precip_CLeaned$annual_precip)
# 
# 
# ##Remove for Humidity##*****
# #Look at boxplot quartile value#
# ecdf(Fungibioclim$annual_humid)
# 
# #Remove all the outliers from Humidity#
# Q1_h <- quantile(Fungibioclim$annual_humid, 0.25)
# Q3_h <- quantile(Fungibioclim$annual_humid, 0.75)
# IQR_h <- IQR(Fungibioclim$annual_humid)
# Fungi_Humid_Cleaned <- subset(Fungibioclim, Fungibioclim$annual_humid > (Q1_h - 1.5*IQR_h) & Fungibioclim$annual_humid > (Q3_h + 1.5*IQR_h)) 
# 
# #Visualise it in a boxplot#
# boxplot(Fungi_Humid_Cleaned$annual_humid ~ Fungi_Humid_Cleaned$scientificName)
# #Visualise it in a histogram#
# hist(Fungi_Humid_CLeaned$annual_humid)
# 
# 
# hist(Fungibioclim$annual_precip)
# hist(Fungibioclim$annual_humid)
# 
# #Remove outliers with a probablisistic culling of lower 5%#
# 
# ecdf(Fungibioclim$annual_temp)
# ecdf(Fungibioclim$annual_precip)
# ecdf(Fungibioclim$annual_humid)
# 
# #Find/state thermal tolerance range based on mean annual temp for each species and mean for phylogenetic clad from box and whisker plot#
# 
# 
# #Determine thermal tolerances#
# ecdf(Fungi_Temp_CLeaned$annual_temp) #For entire phylogenetic clad#
# #For each species#
# Fungi_Temp_TT <- Fungi_Temp_CLeaned[c("scientificName", "annual_temp")]
# 
# 
# Fungi_Temp_TT_HG <- 
# 
# 
# t(FungiFungi_Temp_TT)
# 
# 
