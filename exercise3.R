###練習3：修改別人的程式碼
#感受過Google大神的威力後，你應該知道如果你想要畫出漂亮的圖片，問Google最快了。
#現在，假設你對單一色階的散布圖仍然不滿意，想要精益求精，google給了你一條明路，請參考R Scatter Plot: symbol color represents number of overlapping points

###練習3答案
#其實我們只要改最上面就可以了：
x1 <- dat[,"SBP"]
x2 <- dat[,"DBP"]
df <- data.frame(x1,x2)

## Use densCols() output to get density at each point
x <- densCols(x1,x2, colramp=colorRampPalette(c("black", "white")))
df$dens <- col2rgb(x)[1,] + 1L

## Map densities to colors
cols <-  colorRampPalette(c("#000099", "#00FEFF", "#45FE4F", 
                            "#FCFF00", "#FF9400", "#FF3100"))(256)
df$col <- cols[df$dens]

## Plot it, reordering rows so that densest points are plotted on top
plot(x2~x1, data=df[order(df$dens),], pch = 19, col = col, cex = 2, ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP")

