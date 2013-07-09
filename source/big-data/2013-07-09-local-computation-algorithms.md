---
title: Local Computation Algorithms
author: Ning Xie
institution: Florida International University, USA
date: 2013-07-09
link: http://www.itcsc.cuhk.edu.hk/Workshops/Big_Data_Workshop/Ning_Xie.html
tags: []
language: en
layout: review
mathjax: true
---

## Related works

graph partition:

   * Spielman-Tang
   * local partitioning
   * runtime depends on the smaller side of the cut.  
   * Apply this work for estimating pagerankd

distributed computation.

## LCA: Local Computation Algorithm

input. query. random string. set of solutions.

query order oblivious.
-- for parallelism.

## LCA for Maximal Independent Set (MIS)

Simulate distributed algorithm sequentially.
$k$ round parallel algorithm
--> $d^k$ sequential one.
$d$ is the bounded degree.

Luby'85:

   * log n rounds in parallel.
   * every vertex select itself by 1/2d.
   * Put in MIS if no collision.

local: no need global randomness; log n - wise independence.

## LCA for Hypergraph Coloring

> Relation with graph coloring local algorithm in [Lau2013, HW2] ?

Beck'91, Alon'91.
Sequential algorithm

Idea: random ordering.
Color according to the rank.
-- only depends on previous nodes.
-- randomness makes the query tree small.
-- bound the expectation.
-- Apply Markov inequality.

Proof:
high-rank, live longer but are are;
low-rank, die quickly.


