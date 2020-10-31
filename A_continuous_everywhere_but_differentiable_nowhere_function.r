options( warn = -1 )
f <- function (x) {
	return ( sum( 1/2^(1:10000)*cos(3^(1:10000)*x), na.rm=T ) )
}

x <- seq(-2, 2, length = 1000)
y <- sapply(x, function(x) f(x) )

library(ggplot2)
plt <- ggplot( data.frame(x=x,y=y), aes(x=x,y=y) )
plt + geom_line( col = "red4" ) +
	ggtitle("A continuous EVERYWHERE, but differentiable NOWHERE function") +
	theme(
	      plot.title = element_text( color = "seagreen" , face = "italic" , hjust = 0.5 )
	     )
	    
