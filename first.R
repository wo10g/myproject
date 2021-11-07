#print("hello")
#print("hello2")

#Zadanie 1 

getwd() #katalog do odpalania plików
setwd("/Users/o98487/Desktop/") #ustawianie katalogu

x<- 125
x<- "125"
class(x)
str(x)
is.vector(x)
?vector

x<-c(1,2,3,4,5,6,7,8,9,10)
x<-seq(1:10)
x
?seq
x<-seq(1, 10, by = 1)
y<-seq(10, 1, by = -1)

is.numeric(x)
as.character(x)

z<-c(x,y)
?c

as.character(z)

is.vector(z)
class(z)

z<-c(x, as.character(x))

z<-as.numeric(z)

z<-c(0,z)

w<-as.logical(z)

nowy<- as.numeric(w)
nowy2<- c("raz", "dwa", "trzy")

lista<- list(z, nowy, nowy2)
# indeks - kolejnosc polozenia wektora w liscie

z[3] #indeksowanie od 1 

lista[[3]] [2] #zwracanie calego wektora z listy / elementu wektora 
class(lista[[3]])

# i od 1 do dlugosci z 
for(i in 1:length(z)) {
  print(z[i])
}

# drukowanie wszystkich wektorow z listy i elementow wektorow  
for( i in 1:length(lista)){
  for(j in 1:length(lista[[i]] ) ) {
    print( lista[[i]] [j] )
  }}


?power

install.packages("pracma")
library(pracma)

pow2(x)
?pow2


i<-1
while (i<=length(x)) {
  print( pow2(x[i]))
  i<-i+1
  
}

# data frame 
df<- data.frame(id=1, "2", 3)
str(df)

df<- data.frame(id=c(1,2), c("2", "3"), c(3,3))

?read.csv
dfFromFile<- read.csv(file = "./dane/dane.csv", header = TRUE,sep =  ";")

View(dfFromFile)


hello <- function(x){
  print( paste0("hello ", x))
}
txt<-"W"
hello(x=txt)

?var

dfFromFile[1,1]
dfFromFile[,1]
dfFromFile[1,]
dfFromFile[,3]
dfFromFile$wiek

macierz <- matrix(x,nrow = 10, ncol = 10, byrow = TRUE)

?readline

odp<- readline("Are you a satisfied R user?")
odp1<-strsplit(odp, split = ",") [[1]] [1]
odp2<-strsplit(odp, split = ",") [[1]] [2]

v<-strsplit(odp, split = ",")[[1]]

podpowiedzFrame<- data.frame(matrix(ncol = 3, nrow = 0))















