---
title:       "Ré-installation du relais DStar"
subtitle:    "Mise à jour du Gateway et problèmes de réseau"
# description: ""
date:        2024-07-18
author:      "Morgan ON4MOD"
image:       ""
tags:        ["ON0ULG", "Relais", "DStar", "Network"]
# categories:  ["Tech" ]
---

# ON0ULG

ON0ULG est le relais DStar installé sur le toit du bâtiment B9 de l'ULiège.
L'installation comprend :
- un répéteur ID-RP4000V pour la bande 70cm,
- un répéteur ID-RP2000V pour la bande 2m,
- un contrôleur de relais ID-RP2C,
- Un ordinateur connecté à internet pour les fonctionnalités gateway. 

## Ré-installation du relais DStar

Début juillet 2024, le gateway du relais DStar ON0ULG a été complètement réinstallé.
Le système tourne maintenant sous Alma Linux 9 avec le gateway version 3.20 de chez ICOM. 

Le gateway est connecté au réseau US-trust. Dplus (pour l'affichage du status et la connection aux réflecteurs REF) ainsi que l'add-on IRCDDB (pour l'accès au réseau IRCDDB) ont également été installés.

## Problèmes de réseau

La principale difficulté lors de l'installation est la configuration des paramètres réseau. Le manuel d'installation de ICOM *exige* que l'ordinateur qui fait tourner le logiciel du gateway soit connecté à un routeur dont l'adresse est `10.0.0.1`. L'ordinateur, lui, *doit* avoir l'adresse `10.0.0.2`. Aucune explication n'est donnée quant à pourquoi ces adresses précises sont requises. 

La piste principale est que le manuel expose des conditions très strictes pour éviter que des utilisateurs ne se trompent lors de l'installation. Cependant, le réseau de l'ULiège exploite le réseau `10.0.0.0/8` et il nous est impossible de suivre le manuel à la lettre. 

L'installation a donc été effectuée en remplaçant l'adresse `10.0.0.2` par l'adresse de l'ordinateur dans le réseau de l'université et `10.0.0.1` par l'adresse du routeur de l'université auquel l'ordinateur est connecté.

## Résultats

Le relais tourne actuellement sans problème apparent. Le site [https://dsync.dstarusers.org/](https://dsync.dstarusers.org/gw_status.php?gw=ON0ULG) indique que la synchronisation se déroule correctement. Le relais est également capable de se connecter aux différents réflecteurs (REF). La dernière fonctionnalité qu'il reste à tester pour s'assurer que tout fonctionne est le routage d'indicatif propre au logiciel ICOM.