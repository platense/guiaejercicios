### Taken from https://www.stat.auckland.ac.nz/~ihaka/120/Lectures/lecture17.pdf


library(MASS)

survey2 <- survey

Smoke <- as.character(survey2$Smoke)

Smoke <- gsub("Never", "Nunca", Smoke)
Smoke <- gsub("Regul", "Regularmente", Smoke)
Smoke <- gsub("Occas", "Ocasionalmente", Smoke)
Smoke <- gsub("Heavy", "Mucho", Smoke)

Exer <- as.character(survey2$Exer)
Exer <- gsub("Some", "Algo", Exer)
Exer <- gsub("None", "Ninguno", Exer)
Exer <- gsub("Freq", "Frecuentemente", Exer)

tbl = table(Smoke, Exer)

datos1 <- data.frame(Fumar = Smoke, Ejercicio = Exer)
write.csv(datos1, file="datos1.csv", row.names = FALSE)



row1 = c(91,90,51)  
row2 = c(150,200,155) 
row3 = c(109,198,172)
data.table = rbind(row1,row2,row3)
data.table

rownames(data.table)

library(HSAUR2)
data("USmelanoma")
hist(USmelanoma$mortality)

set.seed(4578)
notas <- runif(80, 4, 7)
grupo <- gl(2, 40, labels = c("grupo A", "grupo B"))

datos2 <- data.frame(notas=notas, grupo=grupo)
write.csv(datos2, file="datos.csv", row.names = FALSE)



