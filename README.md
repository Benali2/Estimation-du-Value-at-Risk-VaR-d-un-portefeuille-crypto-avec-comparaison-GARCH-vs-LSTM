# Estimation du Value at Risk (VaR) d’un portefeuille crypto – Comparaison entre la méthode Monte-Carlo et la Régression Quantile

Les crypto-actifs tels que Bitcoin et Ethereum présentent une volatilité très élevée, des distributions asymétriques, des queues épaisses et des comportements non-gaussiens. Ces caractéristiques rendent les approches traditionnelles de mesure du risque partiellement inadéquates, en particulier celles reposant sur l’hypothèse de normalité.

Ce projet propose une analyse comparative entre deux approches avancées d’estimation du Value at Risk (VaR) :

Méthode Monte-Carlo (MC)
La méthode Monte-Carlo simule un grand nombre de scénarios futurs de rendements en utilisant des distributions marginales Student-t ajustées aux rendements des actifs et une t-copule permettant de capturer la dépendance non linéaire, ainsi que la dépendance en queue entre Bitcoin et Ethereum. Cette approche est particulièrement adaptée aux crypto-monnaies car elle reproduit mieux les mouvements extrêmes, les co-crashs et les queues épaisses observées dans les données. Elle permet d’obtenir une estimation réaliste et robuste de la VaR, notamment en période de stress du marché.

Régression Quantile (QR)
La Régression Quantile permet d’estimer directement le quantile conditionnel des pertes du portefeuille en fonction des informations passées. Contrairement aux méthodes paramétriques, elle ne suppose aucune forme spécifique de distribution pour les rendements. Cette méthode modélise directement les quantiles extrêmes (tels que 95 % et 99 %), ce qui la rend particulièrement pertinente dans un contexte où les distributions sont asymétriques et éloignées de la normalité. Elle constitue une alternative moderne et flexible pour l’estimation de la VaR.

Objectif du projet
L’objectif est de comparer de manière rigoureuse la méthode Monte-Carlo et la Régression Quantile afin d’évaluer :

la précision des estimations de VaR,

la stabilité des méthodes en période de forte volatilité,

le taux de violations obtenu lors du backtesting,

la capacité à capturer les événements extrêmes ainsi que la dynamique complexe des rendements crypto.

Pertinence du projet
Le marché des crypto-actifs étant fortement non linéaire, sujet à des mouvements extrêmes et à des dépendances en queue, il nécessite des méthodes capables de capturer ces aspects. La comparaison entre Monte-Carlo (marges Student-t & t-copule) et Régression Quantile permet de mettre en évidence deux approches complémentaires : l’une basée sur une modélisation stochastique explicite de la dépendance, l’autre sur une estimation non paramétrique directe du quantile conditionnel.

Contenu du projet

Prétraitement et analyse des rendements BTC et ETH

Ajustement des distributions marginales Student-t

Estimation de la t-copule pour la dépendance

Simulation Monte-Carlo des pertes futures du portefeuille

Estimation de la VaR par Régression Quantile

Backtesting et comparaison des résultats

Analyse des performances des deux méthodes
