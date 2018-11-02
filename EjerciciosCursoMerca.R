###Paquetes con R


####Ejercicios con R

#2.1 ARITMETICA CON R

##Calcular 
2+2
##Calcular 
8+12
##sumar 
5+5
##restar 
10-5
##multiplicar 
2*5
##dividir 
(2+8)/2

#2.2 ASIGNACION DE VARIABLES

x<-33
y<-5
mi_edad<-30
su_edad<-25
mi_edad+su_edad
edades <-mi_edad+su_edad
edades

#2.3 TIPOS DE DATOS

##escribir numerico
edad <-30
##escribir nombre
nombre <-"Joel"
##escribir una logica
logica<-FALSE

#2.4 FUNCIONES BASICAS DE R
####SOLO EXPLICAMOS Y LAS VEMOS MAS ADELANTE

#2.5 CREAR UN VECTOR

##crear uno numerico
numerico <-c(2,4,6)
##crear uno caracter 
caracter <- c("a","b","c")
##crear uno boleano
boleano <- c(TRUE,FALSE,TRUE)

###JUEGO de apuestas futbol, volei de lunes a viernes
futbol <-c(100,200,300,-200,100)
volei <-c(20,-200,500,700,300)
####NOMBRANDO VECTOR
names(futbol) <-c("lunes","martes","miercoles","jueves","viernes")
names(volei) <-c("lunes","martes","miercoles","jueves","viernes")
##crear variable dias
dias <-c("lunes","martes","miercoles","jueves","viernes")
##calcular el total ganado
total <-futbol+volei
total
##cantidad ganada o perdida de futbol
totalfut<-sum(futbol)
totalfut
##cantidad ganada o perdida de volei
totalvol<-sum(volei)
totalvol
##total ganado o perdido
totalsemana <-sum(futbol,volei)
totalsemana


#2.6 SELECCIONAR ELEMENTOS DE UN VECTOR
##ganancia del lunes en futbol
futbol[1]
##ganancia de jueves volei
volei[4]
##ganancia de futbol del primer elemento y quinto
futbol[c(1,5)]
##asignar a mitadsemana los resultados de martes, miercoles y jueves de futbol
mitadsemana <-futbol[c(2,3,4)]
mitadsemana
##asignar a selec los resultados de volei de martes a viernes
selec <-volei[2:5]
selec
##seleccionar los primeros elementos de futbol con nombre
futbol[c("lunes","martes","miercoles")]

#2.7 QUE ES UNA MATRIZ

##construir una matriz con 2 filas con los numeros del 1 al 6
matrix(1:6, byrow = TRUE, nrow = 2)
##peliculas volver al futuro recaudacion
volver1 <-c(200,100)
volver2 <-c(180,300)
volver3 <-c(400,200)
##crear un vector con las 3
volver4 <-c(volver1,volver2,volver3)
volver4
##construir una matriz
volvermatriz <-matrix(volver4, nrow = 3, byrow = TRUE)
volvermatriz
##crear vector region y titulos
region <-c("America","Mexico")
titulos <-c("volver1","volver2","volver3")
##nombre de la columnas por region
colnames(volvermatriz) <-region
##nombre de las filas por titulo
row.names(volvermatriz) <-titulos
##ver volvermatriz
volvermatriz

#2.8 ANALIZANDO MATRIZ

##calcular suma por filas
rowSums(volvermatriz)
##calcular suma columna
colSums(volvermatriz)
##asigna la suma por filas a Worl
worl <-rowSums(volvermatriz)
worl
##agregar worl como una nueva columna a volvermatriz y asignarlo a todas
todasmatriz <-cbind(volvermatriz,worl)
todasmatriz
##seleccionar elementos, seleccionar mexico 
mexico <-(todasmatriz[,2])
mexico
##media de mexico
mean(mexico)
##pensando que el boleto vale 4 pesos, dividir todasmatriz entre 5 y asignar a visitantes
visitantes <- todasmatriz/4
visitantes


#2.9 DATAFRAME
##correr mtcars
mtcars
##ver los primeros datos
head(mtcars)
##ver los ultimos datos
tail(mtcars)
##ver estructura de datos
str(mtcars)
##crear un dataframe
nombre <- c("mercurio","venus","tierra","marte","jupiter")
tipo <- c("terrestre","terrestre","terrestre","terrestre","gas")
diametro <- c(0.382, 0.949, 1, 0.532, 11.209)
anillos <-c(FALSE, FALSE, FALSE, FALSE, TRUE)
planetasdf <-data.frame(nombre,tipo,diametro,anillos)
planetasdf
##ver estructura de datos
str(planetasdf)
##seleccionar diametro de venus
planetasdf[2,3]
##todos los datos de jupiter
planetasdf[5,]
##primeros 3 valores de diametro
planetasdf[1:3,"diametro"]
##planetas con anillos
planetasdf$anillos
vectoranillos <-planetasdf$anillos
vectoranillos
##conocer los nombres de estos planteas
planetasdf[vectoranillos,"nombre"]
##ordenar por daimetro
posicion <-order(planetasdf$diametro)
planetasdf[posicion,]


#3.1 TIPOS DE VARIABLES Y ESCALAS
##variable cualitativa nominal
genero <-c("hombre","mujer","mujer", "hombre","mujer")
genero
##variable cualitativa ordinal
temperatura <-c("alta","alta","baja", "media","baja")
temperatura
temperaturavec <- factor(temperatura, order= TRUE, levels = c ("baja", "media", "alta"))
temperaturavec
##Variable cuantitativa discreta
hijos <-c(2,2,4,1,3)
hijos
##Variable cuantitativa continua
celsius <-c(39.2,38.5,25.4,26.8,24.8)
celsius

#3.2 TABLAS DE FRECUENCIAS ###falta agregar frecuencias, porcentajes acumulado frecuencias y de porcentajes
table(genero)
table(temperaturavec)
table(hijos)
table(celsius)

#hacer tabla de frecuencias / trabajar como data.frame
tabla<- as.data.frame(table(temperaturavec))
freq_Acum <- cumsum(tabla$Freq)
freq_relat<- prop.table(tabla$Freq)
Freq_relat_acum<-cumsum(freq_relat)
porcen<-prop.table(tabla$Freq)*100
tablafinal<-cbind(tabla,freq_Acum,freq_relat,Freq_relat_acum,porcen) 
tablafinal

#3.3 GRAFICO DE BARRA Y PASTELES
barplot(table(genero))
pie(table(temperaturavec))
barplot(table(hijos))
pie(c(A=200,B=100,C=50))

#3.4 MEDIDAS DE TENDENCIA CENTRAL

##MEDIA
mean(celsius)
##MODA
##cargar paquete modeest
##cargar la biblioteca
library(modeest)
mfv(hijos)
##MEDIANA
median(celsius)

#3.5 MEDIDAS DE DISPERSION

#VARIANZA 
var(celsius)
#DESVIACION ESTANDAR
sd(celsius)

#4.1 PROBABILIDAD ESTADISTICA
##Lanzar moneda
moneda <-c("aguila","sello")
moneda
##elegir 1 al azar en el espacio muestral
sample(moneda,1)
##lanzarla 2 veces mas
sample(moneda,1)
sample(moneda,1)
##lanzarla 30 veces
set.seed(1)
sample(moneda,30, replace = TRUE)
##Contar cuantas veces salio cara o cruz
set.seed(1)
x <- sample(moneda,30, replace = TRUE)
table (x)
##obtener frecuencia relativa
table (x)/30

#4.2 CORRELACION Y 4.3 REGRESION
##cargar datos 
x <-c(1,2,3,4,5,6)
y <-c(16,17,30,28,39,49)

cov(x,y)
cor(x,y)

##coeficiente de la recta
lm(y~x)
##grafico de dispersion
plot(x,y)
##recta de regresion
abline(lm(y~x))
summary(lm(y~x))

#4.4 ANOVA
l <- lm(y~x)
anova(l)

#4.5 T-STUDENT UNA MUESTRA
t.test(1:10)

#4.6 T-STUDENT DOS MUESTRAS INDEPENDIENTES
t.test(1:10, y = c(7:20)) 

