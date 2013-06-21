---
title: The Price of Spectrum
author: Randall Berry
institution: NWU
date: 2013-06-21
link: http://users.eecs.northwestern.edu/~rberry/ 
tags: ["price", "spectrum", "TV whiteband", "game", "market"]
language: en
layout: review
mathjax: true
---

## Preliminary

wireless spectrum. band. 

free band == unlicensed band. e.g. 

   * "wifi": higher frequency; lower propagation. 
   * **SuperWifi**: Use TV white space. [wiki](http://en.wikipedia.org/wiki/Super_Wi-Fi). Low frequency; more interference.
   
## Model 

Competition in congested market. Two-stage auction:

   * Service Provider (SP): announce prices. 
   * Customer: minimize delivered price := SP announced price + congestion price. 
   
The more people use one band, the higher congestion. User utility is thus lower. Model this by congestion price.

Congestion price:

   * increasing
   * convex
   
SP objective:

   * maximize profit := profit from licensed band + profit from unlicensed band.
   
Customer objective:

   * minimize delivered price. 
   
Wardrop equilibrium: (digest from [wiki](http://en.wikipedia.org/wiki/John_Glen_Wardrop))

   * Only considers customers. No one can be better off by unilaterally change its SP. Also called "User Equilibrium" from wiki.
   * If for every SP, their profit can not increase by unilateral change, this becomes Nash Equilibrium.

> "incumbent"? How to understand in this context? Seems "monoply", seems not. incumbent service provider is just service provider?

## Results

Simple case:

   * Use box demand. More practical should be a function negatively related with price.
   * Monoply: only one SP. 
   
Interesting result:

   * The SP should raise price if more free band is available. Less users are served but unit charge is higher.
   * The Braess's Paradox in transportation network: add resources; the social welfare is reduced.
   * With the increase of freeband capacity: the social welfare first goes down; after some point, it goes up again. 
   * Adding just a little resource is harmful. 
   
## Extensions

   * Heterogeneous case: can use free spectrum to do service differentiation. i.e. two groups: 1) willing to pay higher, less endurable for congestion; 2) the contrary. 
   * Investment/ pricing game. 