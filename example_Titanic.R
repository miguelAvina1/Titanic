
# Titanic --- datos categóricos y numéricos

mydata <- read.csv("G:/Mi unidad/data/titanic.csv", 
                   header=TRUE, 
                   sep=',', 
                   stringsAsFactors=TRUE)

str(mydata)
head(mydata)

# Eliminamos la variable de nombres:
mydata <- mydata[-3]

# Verificar las variables categóricas:
mydata$Survived <- ifelse(mydata$Survived==0, "Surv", "NotSurv")
mydata$Survived <- as.factor(mydata$Survived)

mydata$Pclass <- as.factor(mydata$Pclass)

# Verificamos el porcentaje de cada clase:
prop.table(table(mydata$Survived))

# verificar si los niveles de cada factor categórico tienen al menos un 10% de datos:
prop.table(table(mydata$Pclass))
prop.table(table(mydata$Sex))
prop.table(table(mydata$Siblings.Spouses.Aboard))
# En este caso agrupamos en dos niveles: los que no tienen hij@s-espos@ y los que tienen hij@s-espos@:
mydata$Siblings.Spouses.Aboard <- as.integer(factor(mydata$Siblings.Spouses.Aboard, 
                                                    labels=c("0","1","1","1","1","1","1")))

prop.table(table(mydata$Parents.Children.Aboard))

# Análisis de variables numéricas:
summary(mydata$Age)
hist(mydata$Age)
boxplot(mydata$Age)

summary(mydata$Fare)
hist(mydata$Fare)
boxplot(mydata$Fare)


# Correlación de Pearson:
var_num <- data.frame(mydata$Age, mydata$Fare)
cor(var_num, method="pearson")
# heat map:
#install.packages("reshape2")
library(reshape2)
#install.packages("ggplot2")
library(ggplot2)

tmp <- melt(data.matrix(cor(var_num)))
ggplot(data=tmp, aes(x=Var1,y=Var2,fill=value)) + geom_tile()



