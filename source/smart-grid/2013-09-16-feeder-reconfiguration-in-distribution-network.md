---
title: "Feeder reconfiguration in distribution network"
author: Qiuyu Peng
institution: Electrical Engineering at California Institute of Technology
date: 2013-09-16
link: http://www.its.caltech.edu/~qpeng/
tags: []
language: en
layout: review
mathjax: true
---


> Abstract: The optimal feeder reconfiguration (OFR) problem seeks to alter the on-off status of the switch on lines to minimize certain cost such as power loss. OFR is a mixed integer problem with nonlinear constraints, hence hard to solve. Most existing algorithms rely on linear approximation of power flow equations. In this paper, we propose an algorithm that considers the full power flow equations. The algorithm only involves solving convex program and is guaranteed to obtain a nearly optimal solution under certain conditions. Moreover, simulations show that the algorithm actually obtains the optima of OFR problem for all the test real-world distribution feeders.

power grid:

   * transmission network: long distance; from generator to sub-stations.
   * distribution network: from substation to end users.

feeder is a subgraph of the distribution network.
swtiches to open/close.
Constraints:

   * radial: no loop.
   * each bus only connects to one substation.

In practice,
distribution networks are reconfigured 2-3 times per day.

Modeling.
some literatures use linearization to deal with AC power.
( `2013-07-19-smart-grid-phy-security.md` is an example).
Not realistic because angle difference can be large in distribution network.

Iterative approach.
[Civanlar, 1988],
[Baran, 1989] :

   * Initialize one feasible spanning tree.
   * Loop until no changes
      * close one swtich. (violate one of the constraints)
      * open another switch (branch exchange)

Differences in algorithms of this problem mainly reside in the branch exchange stage.

OPF as subproblem.

Use AC power equations.

bus injection model.
branch flow model.
equivalent when radial. [Baran, 1989]

SOCP relaxation.
[Farivar, 2013].
