###第二節：基礎繪圖函數簡介-2(1)
#接著我們介紹一個強大的函數「plot()」，他支援了多種不同的圖形，其中最主要的是散布圖：
plot(dat[,"SBP"], dat[,"DBP"], ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP")

#其實，我們可以修改點的造型，例如：
plot(dat[,"SBP"], dat[,"DBP"], ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP", pch = 19)

