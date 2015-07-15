x <- url("http://biostat.jhsph.edu/~jleek/contact.html")
lines = readLines(x)
nchar(lines[c(10,20,30,100)])

