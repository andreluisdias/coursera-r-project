# Function to resolve the file name in '000' format
getFilename <- function(id = 1:332) {
  
  for (i in id) {
    if (i < 10) { 
      a <- paste ("00", i, sep="")
    } else if (i >= 10 && i < 100 ) {
      a <- paste ("0", i, sep="")
    } else {
      a <- i
    }
    
    # message(a) # debug
  }
  
  a
}
