install.packages("ggplot2")
library(ggplot2)
library(grid)
library(reshape2)

m <- acast(melt(unclass(Titanic)), Class ~ Age + Sex, sum)
names(dimnames(m)) <- c("Class", "Age_Sex")
df <- melt(unclass(chisq.test(m)$res), value.name = "residuals")
g1 <- ggplot(df, aes(x = Class, y = Age_Sex)) +
  geom_tile(aes(fill = residuals)) +
  scale_fill_gradientn(colours=c("blue","white","red")) +
  theme_bw()

m <- acast(melt(unclass(Titanic)), Class~Age+Sex,
           function(x) {x[2] / sum(x)})
names(dimnames(m)) <- c("Class","Age_Sex")
df <- melt(m, value.name = "survived")
g2 <- ggplot(df, aes(x = Class, y = Age_Sex)) +
  geom_tile(aes(fill = survived)) +
  scale_fill_gradient(low = "blue", high = "red")+theme_bw()

grid.newpage()
pushViewport(viewport(layout = grid.layout(1, 2)))
print(g1, vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
print(g2, vp = viewport(layout.pos.row = 1, layout.pos.col = 2))