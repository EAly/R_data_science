# load packages ------

library(tidyverse)
library(here)
library(skimr)

# read the data in --------
ggplot2::mpg
mpg
view(mpg)
dim(mpg)
skim(mpg)


# create ggplot -------
ggplot(data=mpg) + geom_point(mapping= aes(x= displ, y= hwy))


# Aesthetic mappings -------
# you can map different aesthetics to class, e.g. size, color, shape, alpha
ggplot(data= mpg) + geom_point(mapping= aes(x= displ, y= hwy, color=class, 
                                            size= class))

# control the color of the points
# manual assignment of an aesthetic value happens outside "aes()"
ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy), color='blue')


# Facets ---------
# aka subplots
# Facet by a single variable (class in this case) > use "facet_wrap"
ggplot(data=mpg) +
  geom_point(mapping= aes(x=displ, y=hwy)) +
  facet_wrap(~ class, nrow=2)

# Facet by multiple variables > use "facet_grid
ggplot(data=mpg) +
  geom_point(mapping = aes(x=displ, y=hwy)) +
  facet_grid(drv ~ cyl)
# Geometric objects --------
# use smooth line geom
ggplot(data=mpg) + 
  geom_smooth(mapping = aes(x=displ, y=hwy))

# display multiple geoms 
ggplot(data=mpg) +
  geom_point(mapping= aes(x=displ, y=hwy)) +
  geom_smooth(mapping= aes(x=displ, y=hwy))
# the mapping can be passed directly to ggplot
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping= aes(color=class)) +
  geom_smooth()
# Statistical transformation -------
