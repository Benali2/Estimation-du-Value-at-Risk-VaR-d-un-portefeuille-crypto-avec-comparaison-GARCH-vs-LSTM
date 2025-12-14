# Estimation du Value at Risk (VaR) d’un portefeuille crypto  
### Comparaison entre la méthode Historique et la méthode Monte-Carlo (copule t)

Les crypto-actifs tels que Bitcoin (BTC) et Ethereum (ETH) se caractérisent par une forte volatilité, des distributions asymétriques, des queues épaisses et une dépendance non linéaire, notamment lors des périodes de stress. Ces propriétés remettent en question l’efficacité des méthodes classiques de mesure du risque.

Ce projet propose une **analyse comparative** entre deux approches largement utilisées pour l’estimation du Value at Risk (VaR) d’un portefeuille crypto.

---

## 1. Méthode de la VaR Historique

La VaR Historique repose exclusivement sur les données passées du portefeuille.  
Elle consiste à construire la distribution empirique des pertes historiques, puis à extraire le quantile correspondant au niveau de confiance choisi (95 % ou 99 %).

Cette méthode présente plusieurs avantages :
- simplicité de mise en œuvre,
- absence d’hypothèses paramétriques,
- interprétation intuitive.

Cependant, elle suppose implicitement que le futur reproduit fidèlement le passé et peut sous-estimer le risque en présence de mouvements extrêmes ou de changements de régime, fréquents sur les marchés crypto.

---

## 2. Méthode Monte-Carlo avec copule t

La méthode Monte-Carlo repose sur la simulation de scénarios futurs de rendements du portefeuille.  
Dans ce projet, cette approche s’appuie sur :

- des **distributions marginales Student-t** ajustées aux rendements de BTC et ETH, permettant de capturer les queues épaisses ;
- une **t-copule** pour modéliser la dépendance non linéaire et la dépendance en queue entre les deux actifs.

Les rendements simulés sont ensuite agrégés afin d’obtenir une distribution simulée des pertes du portefeuille, à partir de laquelle la VaR est estimée.

Cette méthode est particulièrement adaptée aux crypto-actifs car elle permet de :
- prendre en compte les co-crashes,
- mieux représenter les événements extrêmes,
- produire une estimation plus robuste de la VaR en période de stress.

---

## Objectif du projet

L’objectif principal est de comparer la VaR Historique et la VaR Monte-Carlo selon plusieurs critères :

- le niveau des VaR estimées (95 % et 99 %),
- le comportement des méthodes en période de forte volatilité,
- le nombre de violations observées lors du backtesting,
- la capacité à couvrir efficacement le risque extrême.

---

## Méthodologie

Le projet suit les étapes suivantes :

- calcul des rendements journaliers de BTC et ETH ;
- construction du portefeuille crypto (pondérations fixes) ;
- estimation de la VaR Historique ;
- ajustement des marges Student-t et estimation de la t-copule ;
- simulation Monte-Carlo des rendements et des pertes du portefeuille ;
- estimation de la VaR Monte-Carlo ;
- backtesting des deux méthodes à l’aide du test de Kupiec ;
- analyse comparative des résultats.

---

## Intérêt de l’étude

La comparaison entre la VaR Historique et la VaR Monte-Carlo permet d’illustrer deux approches fondamentalement différentes de la gestion du risque :

- une approche empirique simple basée sur le passé,
- une approche probabiliste avancée intégrant dépendance et queues épaisses.

Les résultats mettent en évidence les limites de la VaR Historique face aux caractéristiques spécifiques des marchés crypto et soulignent l’intérêt des méthodes de simulation pour une gestion plus prudente du risque extrême.




