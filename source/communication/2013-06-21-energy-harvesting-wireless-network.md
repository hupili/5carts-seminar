---
title: Energy Harvesting Wireless Networks
author: Aylin Yener
institution: PSU
date: 2013-06-21
link: http://wcan.ee.psu.edu/yener/
tags: ["energy harvesting", "wireless network", "optimization", "online algorithm"]
language: en
layout: review
mathjax: true
---

Energy Harvesting (EH) wireless network. e.g. harvest energy from a solar battery.

Applications:

   * WL senser network. 
   * Body monitor network. 
   
## Model

a single EH transimitter:

   * A data queue. 
   * An energy queue. Assume harvested energy is non-causally known. 
   * Try to maximize throughput. 
   
The throughput v.s. power curve: (rate function)

   * increase
   * concave (diminishing return)
   
Decision variable: a power profile (allocation over time).

## Results

   * The concept of an energy tunnel: the region between harvesting curve and transmission curve. Inside the region is feasible solution.
   * Analyze KKT conditions to characterize the solution. 
   * Between two energy arrivals, the transmission power stays the same: lazy transmission. 
   * Shortest path interpretation by plugging in a specific rate function: `$\sqrt{1+p^2(t)}$`.
   * Water-filling --> Directional Water Filling (DWF). 
   
> The offline model sounds to be solvable by dynamic programming to me. Use the energy arrival time points to divide states. DP is mentioned later in evaluation comparison. Missed where it is used. 

## Extensions

   * Online. Said to prove the optimality. 
   * 2-by-2 Gaussion Interference Channel. 
   * 2-way relay.