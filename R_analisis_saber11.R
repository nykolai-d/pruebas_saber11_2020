        install.packages("e1071", dep = TRUE)
library(e1071)
kurtosis(puntajes$PTGlobal)
skewness(puntajes$PTGlobal)


library(MASS)

boxplot(puntajes$PTSocCiud, 
        main = "Sociales y ciudadanas", 
        ylab = "Puntaje")

boxplot(puntajes$PTMat, 
        main = "Matem?ticas", 
        ylab = "Puntaje")

boxplot(puntajes$PTLecCrit, 
        main = "Lectura cr?tica", 
        ylab = "Puntaje")

boxplot(puntajes$PTCiencNat, 
        main = "Ciencias naturales", 
        ylab = "Puntaje")

boxplot(puntajes$PTIngles, 
        main = "Ingl?s", 
        ylab = "Puntaje")

boxplot(puntajes$PTGlobal, 
        main = "Pruebas Saber 2021", 
        ylab = "Puntaje")

install.packages("devtools")

library(devtools)

# Convert the variable dose from a numeric to a factor variable
puntajes2$G?nero <- as.factor(puntajes2$G?nero)
head(puntajes2)

boxplot(puntajes2$PTSocCiud, puntajes2$PTLecCrit, puntajes2$PTIngles,
        main = "Humanidades",
        names = c("Sociales y ciudadanas", "Lectura cr?tica", "Ingl?s"),
        ylab = "Puntaje")

boxplot(puntajes2$PTMat, puntajes2$PTCiencNat,
        main = "Ciencias exactas",
        names = c("Matem?ticas", "Ciencias naturales"),
        ylab = "Puntaje")

boxplot(puntajes2$G?nero["M"],puntajes2$G?nero["F"],
        main = "G?nero",
        names = c("Matem?ticas", "Ciencias naturales"),
        ylab = "Puntaje")

tapply(puntajes2$PTGlobal,puntajes2$PTMat,summary)

boxplot(formula(puntajes2$PTGlobal~puntajes2$G?nero))

boxplot(formula(PTGlobal~G?nero),data = puntajes2)

boxplot(formula(PTIngles~EsColOficial),data = puntajes2)

boxplot(formula(PTMat~EsColMixto),data = puntajes2)

boxplot(formula(PTGlobal~EsColMixto),data = puntajes2)

boxplot(formula(PTGlobal~ColRuralUrbano),data = puntajes2)

boxplot(formula(PTCiencNat~ColRuralUrbano),data = puntajes2)

boxplot(formula(PTGlobal~ColJornada),data = puntajes2)

boxplot(formula(PTIngles~EsBilingue),data = puntajes3)


