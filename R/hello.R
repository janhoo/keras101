# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'


library(ISLR)
print(head(College))
maxs <- apply(College[, 2:18], 2, max)
mins <- apply(College[, 2:18], 2, min)


scaled.data <- as.data.frame(scale(College[,2:18],
                                   center = mins,
                                   scale = maxs - mins))

