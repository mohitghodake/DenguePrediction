setwd("C:/Users/mghodake/Downloads/DrivenData")

df <- read.csv("dengue_features_train.csv")
df1 <- read.csv("dengue_labels_train.csv")


df_train <- merge(df, df1)

summary(df_train)

for(i in 1:ncol(df_train)){
  df_train[is.na(df_train[,i]), i] <- mean(df_train[,i], na.rm = TRUE)
}
summary(df_train)
