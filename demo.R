
#-----------------#
# beisics demo    #
# Amy Andrews     #
#-----------------#

# commands to run and build
# must be within the package working directory
library(devtools)

# load what exists so far and check it
load_all()
document()
check(cran = FALSE)

# build a function, give it a name
# usethis::use_r(name = "")
document()

# test a function
# use_test("")
test()
load_all()

# include dependencies for functions in package
# usethis::use_package("ggplot2")

# when happy, build without binaries to create gz file
# build(binary=FALSE)


----------------------------------------------


# install and load
install.packages("P:/Projects/beisics_0.0.0.9000.tar.gz", repos = NULL)
library(beisics)

# importing the logos (mvp)
?get_beis_logo()

get_beis_logo(copy_to = "P:/demo/", white_type = FALSE)
get_beis_logo(copy_to = "P:/demo/", white_type = TRUE)

# importing the css (mvp)
get_beis_css(copy_to =  "P:/demo/")

# wrapper functions
beis_logo(copy_to = "P:/demo/", white_type = FALSE)
beis_css(copy_to =  "P:/demo/")

# colours
?beis_colours
beis_colours(n = 15, distinct = TRUE)

# styling ggplots
p <- ggplot2::ggplot(mtcars, ggplot2::aes(x=cyl, y=mpg, fill = as.factor(gear))) +
  ggplot2::geom_bar(stat="identity")

p +
  theme_beis()

p +
  theme_beis() +
  ggplot2::scale_fill_manual(values = beisics::beis_colours(n=5))

# styling dygraphs
d <- dygraphs::dygraph(cbind(mdeaths, fdeaths), main = "title")

d <- dygraphs::dyAxis(d, "y", drawGrid = FALSE)

d <- theme_beis_dygraph(d, copy_to = "P:/demo/")
d

