#Data Analytics Assignment 6_4 - session 6

# Independence, normality & Equality

yeast <- read.table("yeast.txt", quote="\"", comment.char="")
names(yeast) <- c("seq","mcg", "gvh", "alm", "mit", "erl", "pox", "vac", "nuc", "class")

attach(yeast)
qqnorm(nuc)
qqline(nuc)

# Bartlett Test of Homogeneity of Variances
bartlett.test(nuc~class, data=yeast)

# Figner-Killeen Test of Homogeneity of Variances
fligner.test(nuc~class, data=yeast)

# Homogeneity of Variance Plot
library(HH)
hov(nuc~class, data=yeast)
hovPlot(nuc~class, data=yeast, str = 90, las = 3)

