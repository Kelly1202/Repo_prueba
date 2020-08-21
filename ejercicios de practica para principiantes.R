#Problemas sugeridos 
#1. Crea un vector numerico con la sgte informacion (1,24,23,8)
vecnum<-c(1,24,23,8)
vecnum
#2. Crea un vector alfanumerico con el nombre de tus 5 series favoritas
seriesfav<-c("Pretty Little Liars", "Grey's Anatomy", "Anne with an e", "Gossip girl", "Las chicas del cable")
a<-c(1,2,3)
b<-c(2,0,1)
a+b
a-b
a*b
a/b
a^b
7%/%3
7%%3
help(matrix)
# a veces el = no sirve para algunas funciones 
#<- se hace como ALT -
#Funciones de vectores
#Valor minimo del vector
vector<-c(5,3,2,1)
min(vector)
#valor maximo del vector
max(vector)
#Tamaño
length(vector)
#Suma
sum(vector)
#Producto
prod(vector)
#range
range(vector)
#posicion
which.min(vector)
which.max(vector)

#Invertir el vector
a<-rev(vector)

#MATRICES
#Crear una matriz 4x5
matriz1<-matrix(data=1:20, nrow=4, ncol=5, byrow=FALSE)
matriz1
matriz1<-matrix(data=1:20, nrow=4, ncol=5, byrow=TRUE)
matriz1
#Al conlocar true o false en byrow cambia el orden

#Extraer elementos de la matriz
matriz1[3,3]
#Columna
matriz1[,3]
#Fila
matriz1[3,]

#Eliminar columnas
matriz1[,-c(2,4)]
matriz1[-1,-5]

#Listas

lista<-list(1:5,
            c("Amarilla", "Azul", "Rojo"),
            c(21,16,19),
            list(c(1:5, 11:15),
                 c("Diego", "Mary")))
lista
str(lista)
names(lista)<-c("a","b","c","d")
lista
names(lista$d)<-c("d1","d2")
lista

#[]
lista[1]
str(lista[1])

#[[]]
lista[[1]]
str(lista[[1]])

#$ para llamar algo en particular en la lista
#primero tengo que nombrar los elementos de la lista
lista$d

#Data frame
#data.frame
nombre<-c("Sebastian", "Natalia", "Grace")
edad<-c(20,17,21)
mayor<-c(TRUE, FALSE, TRUE)
df<-data.frame(nombre,edad,mayor)
df

names(df)<-c("Nombre","Edad", "Mayor")
df<-data.frame(Nombre=nombre, Edad=edad, Mayor=mayor)

df[2,2]
df[2,"Edad"]
df[2,]
df[,2]

df2<-df[c(1,2),c("Edad","Mayor")]
df2

df$peso<-c(60,55,67)
df[["Peso"]]<-c(60,55,67)

nuevaobs<-data.frame(Nombre="Diego",Edad=21, Mayor=T,Peso=57)
df<-rbind(df,nuevaobs)
df

library(car)
install.packages("car")
