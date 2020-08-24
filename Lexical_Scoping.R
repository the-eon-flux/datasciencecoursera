# General things

Make.power <- function(n) {
  Pow <- function(x){
    x^n
  }
  Pow
} 
Square <- Make.power(2)
Cube <- Make.power(3)

print(Square(10))


# Code 1
make.LogFn <- function(base) {
  LogFn <- function(x){
    log(x, base = base)
  }
  LogFn
}

Log15 <- make.LogFn(15)
Log15(256)

# Code 2

make.CustomGraph <- function(type) {
  PlotFn <- function(x,y, ... ){
    plot(x, y, type=type, ...)
  }
  PlotFn
}

LinePlot <- make.CustomGraph(type='l')
ScatterPlot <- make.CustomGraph(type = 'p')

LinePlot(airquality[,1], airquality[,2],main = "LinePlot")
ScatterPlot(airquality[,1], airquality[,2])

# Code 3 : Make a function for cuberoot

CubeRoot <- function(x){
  x^(1/3)
}

CubeRoot(27)

# Make a function which makes Custom Root function

Make.CustomRoot <- function(Root){
  RootFn <- function(x){
    x^(1/Root)
  }
}

FourRoot <- Make.CustomRoot(4)
FourRoot(16)

FiveRoot <- Make.CustomRoot(5)
FiveRoot(32)



y <- 10

f <- function(x){
  y <- 2
  y*2 + g(x)
}

g <- function(x){
  x*y
}

f(3)