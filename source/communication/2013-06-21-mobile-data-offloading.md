---
title: Mobile Data Offloading
author: Jianwei Huang
institution: CUHK
date: 2013-06-21
link: http://jianwei.ie.cuhk.edu.hk/
tags: ["price", "game", "market"]
language: en
layout: review
mathjax: true
---

## Background

Motivation:

   * Demand of wireless data rate is growing fast. Data quoted from Cisco. Another speaker also included similar data from Cisco's prediction.
   * The capacity of wireless is growing slow: e.g. available spectrum; efficiency; pathloss, etc. 
   
Many technical efforts can be done.

Economics approach:

   * Reshape the demand.
   * AT&T: provide incentive for App developers to reduce signaling. Also a real deployer for wifi offloading.
   
> Quote from an after talk with prof. Lau: old AT&T break into three smaller baby bells; one of it eat original AT&T and rename itself as "at&t". The service is quite noisy at the time iPhone1 came to the public. It sign exclusive contract with Apple and provide unlimited data flow at a fixed rate.

## Wifi Offloading 

   * user initiated offloading. 
   * operate initiated offloading. 

The model:

   * several operators, denote as Base Station (BS). 
   * several wifi hotspot. (W). 
   * W determine unit price. 
   * BS determine amount allocated to each W. 
   
Solution:

   * Under centralized scenario, optimize for social welfare. One set of KKT conditions.

However, W's price and BS's willingness of allocation are private information. A mechanism should be designed to guarantee truthfulness biding. That is, BS and W do not have incentive to lie. In this case, the solution will be same as centralied social welfare optimization. 

The mechanism should be the core of this type of work. 

Solution:

   * Double auction does not work. 
   * **Iterative Double Auction** can solve it.

## Paper

Iosifidis, George, Lin Gao, Jianwei Huang, and Leandros Tassiulas, "An Iterative Double Auction for Mobile Data Offloading", IEEE WiOpt (Best Paper Award), 2013. 

   
## Other practical problems

e.g. the continuation of TCP session in the switch. 