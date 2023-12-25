###�m��3�G�ק�O�H���{���X
#�P���LGoogle�j�����¤O��A�A���Ӫ��D�p�G�A�Q�n�e�X�}�G���Ϥ��A��Google�̧֤F�C
#�{�b�A���]�A���@�ⶥ�������Ϥ��M�����N�A�Q�n��q�D��Agoogle���F�A�@�������A�аѦ�R Scatter Plot: symbol color represents number of overlapping points

###�m��3����
#���ڭ̥u�n��̤W���N�i�H�F�G
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
