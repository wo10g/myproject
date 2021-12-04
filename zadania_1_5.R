#1. Napisz funkcję sprawdzająca czy 1 liczba jest podzielna przez druga użyj - %%


x <- 20
y <- 4

divRest <- function(x,y){
  
  if(x%%y == 0){
    cat(x,"jest podzielna przez",y)}
  if(x%%y != 0 || x/y < 0){
    cat(x,"nie jest podzielna przez",y)}
}

divRest(x,y)


#2. Pociąg z Lublina do Warszawy przejechał połowę drogi ze średnią prędkością 120 km/h.
#Drugą połowę przejechał ze średnią prędkością 90 km/h.Jaka była średnia prędkość pociągu.

x <- c(120,90)

trip.mean <- mean(x)
print(trip.mean)

#3. Utwórz funkcję obliczającą współczynnik korelacji r Pearsona dla 2 wektorów o tej samej długości.
#Wczytaj dane plik dane.csv i oblicz współczynnik dla wagi i wzrostu. W komentarzu napisz co oznacza wynik.


dfFromFile<- read.csv(file = "./dane/dane.csv", header = TRUE,sep =  ";")
View(dfFromFile)

x <- c(1,2,3,4,5)
y <- c(1,2,3,4,5)
cor(x, y,  method = "pearson")
cor.waga.wzrost <- cor(dfFromFile$waga, dfFromFile$wzrost,  method = "pearson")
cor.waga.wzrost

#Korelacja Pearsona na pozimie 0.98, oznacza to, ze wraz ze zwiekszeniem wzrastu, zwieksz sie tez waga 


#4. Napisz funkcję zwracającą ramke danych z danych podanych przez użytkownika 
#stworzDataFrame <- function(ile=1) W pierwszym wierszu użytkownik podaje nazwy kolumn. w kolejnych wierszach zawartość wierszy ramki danych ( tyle wierszy ile podaliśmy w argumencie ile. ile=1 oznacza, że gdy użytkownik nie poda żadnej wartości jako parametr, domyślna wartością będzie 1)



stworzDataFrame <- function(ile=1){
  ask <- c()
  ask[1] <- readline("Nazwa kolumny: ")
  
  while(TRUE){
    ile = ile + 1
    ask[ile] <- readline("Wartosc kolumny  ")
    if(nchar(ask[ile])==0){
      break 
    }
  }
  
  if(ile>2){
    DataFrame<- data.frame(ask[3:ile-1])
    colnames(DataFrame) <- ask[1]
  }else{
    DataFrame<- data.frame("")
    colnames(DataFrame) <- ask[1]
  }
  DataFrame
}

stworzDataFrame()

#5 Napisz funkcję , która pobiera sciezkeKatalogu, nazweKolumny, jakaFunkcje, DlaIluPlikow i liczy: 
#mean, median,min,max w zależności od podanej nazwy funkcji w argumencie, z katologu który podaliśmy i z tylu plików ilu podaliśmy dla wybranej nazwy kolumny. 
#UWAGA: w podanych plikach R pobierając komórki nazwane liczbami R wstawi przed nazwy X. Funkcję przetestuj dla katalogu smogKrakow.zip.  Wykonując obliczenia pomiń brakujące wartości.

#liczZplikow <- function(sciezka,nazwaKolumny,jakaFunkcja="mean",
#DlaIluPlikow=1){ 
  
  #...}

liczZplikow <- function(sciezka,nazwaKolumny,jakaFunkcja,DlaIluPlikow){ 
  
  
  list <- list.files(sciezka)
  
  resultList <- c()
  
  if(DlaIluPlikow>length(list)){
    print("error")
  }else{
    for(i in 1:DlaIluPlikow){
      file <- list[i]
      
      path <- paste(sciezka,file,sep="/")
      
      DataFrame <- read.csv(path,sep = ",", header = TRUE, na.strings = c("","NA"))
  
      DataFrame <- na.omit(DataFrame[[nazwaKolumny]])
      is.numeric(DataFrame)
      
      if(is.numeric(DataFrame) == TRUE){
        if(jakaFunkcja == "mean"){
          resultList[i] <- mean(DataFrame)
          result <- mean(resultList)
        }else if(jakaFunkcja == "median"){
          resultList[i] <- median(DataFrame)
          result <- median(resultList)
        } else if(jakaFunkcja == "min"){
          resultList[i] <- min(DataFrame)
          result <- min(resultList)
        }else{
          resultList[i] <- max(DataFrame)
          result <- max(resultList)
        }
      }else{
      }
    }
  }
  result
}


liczZplikow("/Users/o98487/Desktop/R_projects/smogKrakow","X169_temperature","mean",12)
liczZplikow("/Users/o98487/Desktop/R_projects/smogKrakow","X169_temperature","median",12)
liczZplikow("/Users/o98487/Desktop/R_projects/smogKrakow","X169_temperature","min",12)
liczZplikow("/Users/o98487/Desktop/R_projects/smogKrakow","X169_temperature","max",12)
