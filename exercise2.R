###�m��2�G���@�i��
#�A�w�g�|�e�����ϤF�a? �b���e���ҵ{���]�|�⥭����&�зǮt(�зǻ~)��a? �ӥB�]���D�ӫ�˨D�Xt test�����G��a�C
#�e�X�U���o�i�ϡI
##   Variable Disease:0  Disease:1  p-value
## 1 "eGFR"   "33.2��6.4" "34.4��7.2" "0.020"

###�m��2����
#�ڭ̥i�H�ΤW�����Ʀr�ӵe�X��
m0 = 33.2
s0 = 6.4/sqrt(sum(dat[,"Disease"] == 0, na.rm = TRUE))
m1 = 34.4
s1 = 7.2/sqrt(sum(dat[,"Disease"] == 1, na.rm = TRUE))

XXX = c(m0, m1)
barplot(XXX, col = c("gray50", "white"), xlab = "Disease", ylab = "eGFR", ylim = c(0, 43))
lines(c(1.9, 1.9), c(m1 - qnorm(0.975) * s1, m1 + qnorm(0.975) * s1), lwd = 3)
lines(c(1.75, 2.05), c(m1 + qnorm(0.975) * s1, m1 + qnorm(0.975) * s1), lwd = 3)
lines(c(1.75, 2.05), c(m1 - qnorm(0.975) * s1, m1 - qnorm(0.975) * s1), lwd = 3)
lines(c(0.7, 0.7), c(m0 - qnorm(0.975) * s0, m0 + qnorm(0.975) * s0), lwd = 3)
lines(c(0.55, 0.85), c(m0 + qnorm(0.975) * s0, m0 + qnorm(0.975) * s0), lwd = 3)
lines(c(0.55, 0.85), c(m0 - qnorm(0.975) * s0, m0 - qnorm(0.975) * s0), lwd = 3)
lines(c(0.7, 0.7, 1.9, 1.9), c(36, 38, 38, 36), lwd = 3)
text(1.3, 40, "p = 0.020")
legend("topright", c("Control", "Case"), fill = c("gray50", "white"))
