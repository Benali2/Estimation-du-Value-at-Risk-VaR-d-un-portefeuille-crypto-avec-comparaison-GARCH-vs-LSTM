# ============================================================
# Importation des données BTC & ETH et calcul des rendements
# ============================================================

library(quantmod)

getSymbols(c("BTC-USD", "ETH-USD"), from = "2022-01-01")

btc <- `BTC-USD`[, "BTC-USD.Close"]
eth <- `ETH-USD`[, "ETH-USD.Close"]

rbtc <- diff(log(btc))[-1]
reth <- diff(log(eth))[-1]

idx <- complete.cases(rbtc, reth)
X <- as.numeric(rbtc[idx])
Y <- as.numeric(reth[idx])
