Salary <- c(24,26,25,24,27,24,27,23,15,17,20,16,25,29,27,19,18,21,20,21,22,19)
Gender <- factor(c(rep("Female", 12), rep("Male", 10)))
Education <- factor(c(rep("Degree",8),
                      rep("No degree", 4),
                      rep("Degree", 3),
                      rep("No degree", 7)))
con.gender <-  c(rep(1, 12), rep(-1, 10))
con.education <- c(rep(1,8), rep(-1, 4), rep(1, 3), rep(-1, 7))
con.gen.x.edu <- con.gender*con.education
d1 <- data.frame(Salary, Gender, Education, con.gender, con.education, con.gen.x.edu)

d1
cor(d1$con.gender,d1$con.education)
d2 <- d1
fix(d2)

d3 <- d2[5:20,]
d3$Education[12] <- 'Degree'
d3$con.education[12] <- 1
d3$con.gen.x.edu[12] <- -1

cor(d1[,4:6])
cor(d3[,4:6])



game.wmc.bal <- game.wmc[1:22,]

game.wmc.bal <- game.wmc.bal[2:21,]

with(game.wmc.bal, cor(as.numeric(age_grp), pcu_score))

with(game.wmc, cor(as.numeric(age_grp), pcu_score, use="complete.obs"))




