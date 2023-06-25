# Load necessary packages

library(tidyverse)
library(data.table)

# Read in data
artisanData <- data.table::fread("The_Artisan's_Workshop.csv")

# Data exploration
summary(artisanData)
head(artisanData)

# Calculate summary stats
artisanCounts <- artisanData %>%
  group_by(skill) %>% 
  summarise(Count = n()) %>%
  arrange(desc(Count))

# Visualize Counts
plot(artisanCounts$skill, artisanCounts$Count,
     main="Number of Artisans per Skill", 
     xlab="Skill", ylab="Count")

# Calculate Mean and Median Wage
artisanWages <- artisanData %>%
  summarise(Mean_wage = mean(wage),
            Median_wage = median(wage))

# Summary of wage
print(artisanWages)

# Create new dataframe with average wage per skill
meanWagePerSkill <- artisanData %>%
  group_by(skill) %>%
  summarise(Mean_wage = mean(wage))

# Outliers
outliers <- artisanData %>%
  group_by(skill) %>%
  mutate(outlier = if_else(wage > mean(wage)+ 3*sd(wage), 1, 0)) %>%
  summarise(Outlier_count=sum(outlier))

# Visualize Outliers
barplot(outliers$Outlier_count, main= "Number of Outliers by Skill",
        xlab= "Skill", ylab= "Count")

# Statistical test
t.test(artisanData$wage~ artisanData$skill, var.equal=T)

# Linear Regression
model <- lm(wage ~ skill, data=artisanData)
summary(model)

# Plot residuals
plot(model, 1)

# Create new variable for time spent
artisanData <- artisanData %>%
  mutate(timeSpent = timeSpent/60) 

# Factor analysis
artisanData.fa <- factor.analysis(artisanData$timeSpent,
                                  artisanData$wage, oblique = F)

# Predicting the wage
predictorVar <- artisanData %>% 
  select(wage, skill, timeSpent)
  
model2 <- lm(wage ~ skill + timeSpent, data=predictorVar)
summary(model2)