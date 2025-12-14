library(moments)   # skewness, kurtosis
library(ggplot2)
library(reshape2)

df_ret <- data.frame(
  Date = index(btc)[-1][idx],
  BTC = X,
  ETH = Y
)

### -----------------------------
### 1. Aperçu statistique
### -----------------------------
cat("\n========== Statistiques descriptives ==========\n")
stats <- data.frame(
  Actif = c("BTC", "ETH"),
  Moyenne = c(mean(X), mean(Y)),
  Mediane = c(median(X), median(Y)),
  Ecart_type = c(sd(X), sd(Y)),
  Skewness = c(skewness(X), skewness(Y)),
  Kurtosis = c(kurtosis(X), kurtosis(Y)),
  Min = c(min(X), min(Y)),
  Max = c(max(X), max(Y))
)
print(stats)

### -----------------------------
### 2. Graphique temporel des rendements
### -----------------------------
df_long <- melt(df_ret, id="Date")
ggplot(df_long, aes(Date, value, color=variable)) +
  geom_line(alpha=0.6) +
  labs(title="Rendements journaliers BTC vs ETH",
       x="Date", y="Rendement", color="Actif") +
  theme_minimal()

### -----------------------------
### 3. Histogrammes + densité empirique
### -----------------------------
par(mfrow=c(1,2))

hist(X, breaks=60, probability=TRUE, col="lightgray",
     main="BTC : Densité empirique")
lines(density(X), col="red", lwd=2)

hist(Y, breaks=60, probability=TRUE, col="lightgray",
     main="ETH : Densité empirique")
lines(density(Y), col="red", lwd=2)

par(mfrow=c(1,1))

### -----------------------------
### 4. Boxplots
### -----------------------------
boxplot(df_ret[,2:3], col=c("gold","lightblue"),
        main="Boxplot des rendements",
        names=c("BTC","ETH"))
