# Estimation du Value at Risk (VaR) d’un portefeuille crypto  
### Comparaison entre la méthode Monte-Carlo et la Régression Quantile

Les crypto-actifs, tels que Bitcoin et Ethereum, présentent une volatilité élevée, des distributions asymétriques, des queues épaisses et des comportements non-gaussiens. Ces caractéristiques rendent les méthodes classiques de mesure du risque — basées sur l’hypothèse de normalité — insuffisamment robustes.

Ce projet propose une **analyse comparative** entre deux approches avancées d’estimation du Value at Risk (VaR) :

---

## 1. Méthode Monte-Carlo (MC)

La méthode Monte-Carlo repose sur la simulation de milliers de scénarios futurs de rendements.  
Dans ce projet, les simulations utilisent :

- des **distributions marginales Student-t** ajustées aux rendements BTC et ETH ;
- une **t-copule** capturant la dépendance non linéaire ainsi que la dépendance en queue entre les deux actifs.

Cette méthode est particulièrement adaptée au marché crypto car elle reproduit :

- la dynamique extrême (co-crash) observée entre actifs,
- les queues épaisses,
- les mouvements violents du marché.

Elle fournit une VaR **réaliste et robuste**, surtout en période de stress.

---

## 2. Régression Quantile (QR)

La Régression Quantile permet d’estimer directement les **quantiles conditionnels** des pertes du portefeuille, en fonction des informations passées.

Contrairement aux approches paramétriques :

- aucune hypothèse de normalité ou de forme de distribution n’est imposée,
- le modèle cible **directement** les quantiles extrêmes (VaR 95 %, VaR 99 %).

Cette méthode est particulièrement pertinente pour les cryptos, dont les distributions sont asymétriques et loin de la normalité.  
Elle constitue une alternative flexible et moderne pour l’estimation de la VaR.

---

## Objectif du projet

Comparer de manière rigoureuse les deux approches afin d’évaluer :

- la précision des estimations de VaR,
- la stabilité des méthodes en période de forte volatilité,
- le taux de violations lors du backtesting,
- la capacité à capturer les événements extrêmes et la dynamique réelle du marché crypto.

---

## Pertinence du projet

Les rendements crypto présentent :

- une forte non-linéarité,
- des mouvements extrêmes,
- une dépendance significative en queue.

La confrontation entre **Monte-Carlo (Student-t + t-copule)** et **Régression Quantile** permet d’exposer deux visions complémentaires :

- **modélisation stochastique explicite** (MC),
- **quantile conditionnel non paramétrique** (QR).

---

## Contenu du projet

- Prétraitement et analyse des rendements BTC et ETH  
- Ajustement des distributions marginales Student-t  
- Estimation de la t-copule pour la dépendance  
- Simulation Monte-Carlo des pertes futures du portefeuille  
- Estimation de la VaR par Régression Quantile  
- Backtesting et comparaison des violations  
- Analyse des performances des deux méthodes

---



