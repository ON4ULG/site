---
title:       "DStar Relay Re-Installation"
subtitle:    "Updating the Gateway and Networking Problems"
# description: ""
date:        2024-07-18
author:      "Morgan ON4MOD"
image:       ""
tags:        ["ON0ULG", "Relay", "DStar", "Network"]
# categories:  ["Tech" ]
---

# ON0ULG

ON0ULG is the DStar relay installed on the roof of building B9 of ULiège.
The install comprises:
- one ID-RP4000V repeater for the 70cm band,
- one ID-RP2000V repeater for the 2m band,
- one ID-RP2C relay controller,
- one computer connected to internet for the gateway functionalities. 

## Reinstalling the DStar relay

Early July 2024 the gateway of the ON0ULG DStar relay was completely reinstalled. 
The system now runs Alma Linux 9 with the version 3.20 of the ICOM gateway software.

The gateway is connected to the US-trust network. DPlus (used to display the status and establish connections to REF reflectors) as well as the IRCDDB add-on (used to access the IRCDDB network) were also installed.

## Network problems

The main difficulty encountered during the installation was the network settings. The installation manual from ICOM *require* that the computer used to run the gateway software is connected to a router with IP `10.0.0.1`. The computer *must* have IP `10.0.0.2`. No explanation whatsoever is given as to why these requirements exists.

The main supposition is that the manual has these very strict requirements to avoid users from deviating too much from their test conditions. However, the network at ULiège does use the `10.0.0.0/8` network and it is impossible to follow the manual to the letter.

The installation was thus done by replacing IP `10.0.0.2` with the IP of the computer on the ULiège network and replacing IP `10.0.0.1` with the address of the router of the university the computer is connected to.

## Results

The relay now runs with no apparent problems. The [https://dsync.dstarusers.org/](https://dsync.dstarusers.org/gw_status.php?gw=ON0ULG) website shows that the synchronisation is running correctly. The relay is also able to connect to the REF reflectors. In order to ensure that everything is really running fine, the callsign routing (from the ICOM software) must still be tested.