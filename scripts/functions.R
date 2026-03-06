say_hi <- function() {
  message("Hi!")
}
say_hi()

say_hi_to_someone <- function(name) {
  message("Hi, ", name, " how are you?")
}
#need to include spaces

say_hi_to_someone(name = "Savannah")
#supplies the argument (name)

say_hi_to_someone("Savannah")
#will go in order of arguments, don't need to specify
#output: Hi, Savannah how are you?

return_name <- function(name) {
  if(name == "Nicole") {
    return("hi")
  }
  1 + 2
  name
  return(name)
}
#will only return the last argument in the script
#set return at the end, this is what the output will show, shows intent

return_name("Savannah")
return_name("Nicole")

greet <- function(name, greeting = "Hello") {
  #order of arguments on what makes sense as inputs, ie data, then more optional things
  #if you specify arguments, set a default
  message(greeting, ", ", name)
}

greet("Savannah")
#Hello, Savannah

greet("Savannah", "sup")
#sup, Savannah

function_name <- function(arg1, arg2, arg3 = "default", number) {
  ## body of function
  ## ... code that does the work...
  ## and a return at the end
}

exterior_f <- c(77, 78, 77)
exterior_c <- (exterior_f - 32) * 5 / 9

surface_f <- c(103, 102, 99)
interior_f <- c(179, 135, 90)

convert_f_to_c <- function(fahr) {
  (fahr - 32) * 5 / 9
}

convert_f_to_c <- function(fahr) {
  celsius <- (fahr - 32) * 5 / 9
  return(celsius)
}
#better labels

convert_f_to_c(exterior_f)

#a function can only return one object
convert_temps <- function(fahr) {
  celsius <- (fahr - 32) * 5 / 9
  kelvin <- celsius + 273.15
  return(list(
    fahr = fahr,
    celsius = celsius,
    kelvin = kelvin
  ))
}
#don't need commas in between bc its separate lines of code

data.frame(convert_temps(interior_f))
#or
temps<- convert_temps(interior_f)
data.frame(temps)

convert_temps(interior_f) %>% data.frame()

convert_temps <- function(temp, units = "F") {
  if(!units %in% c("C", "F")) {
    #error
    stop("units must be either F or C")
    #message
  }
  if(units == "F") {
    celsius <- (temp - 32) * 5 / 9
    fahr <- temp
  } else{
    fahr <- celsius* 9 / 5 + 32
    celsius <- celsius
  }
  kelvin <- celsius + 273.15
  return(list(
    fahr = fahr,
    celsius = celsius,
    kelvin = kelvin
  ))
}

convert_temps(interior_f, units = "F")

usethis::create_package("~/mytools")
