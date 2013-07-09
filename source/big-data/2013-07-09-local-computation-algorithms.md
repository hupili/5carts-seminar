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

## Abstract from the workshop

> Suppose one is given a large graph and would like to compute a maximal independent set. However, it will only be necessary to answer queries of the form ``Is $v$ in the maximal independent set?'' for a small number of vertices which are unknown in advance. Does one need to perform the whole maximal independent set computation in order to answer these queries? More generally, what if one wants to solve a computational problem for which the input and output are too large to read or write in their entirety, but for which only a small part of the output will be requested? Can the the requested part of the solution be computed faster than computing the entire output? To capture this challenge, we propose a model called \emph{local computation algorithms} which for a computation problem $F$ with input $x$, supports queries to values of arbitrary locations $y_i$ in a legal output $y \in F(x)$, where $F(x)$ denotes the set of possible solutions to $F$. When more than one legal output $y$ exists, the local computation algorithm should output in a way that is consistent with at least one such $y$. Local computation algorithms are intended to distill the common features of several concepts that have appeared in various algorithmic subfields, including local algorithms, locally decodable codes, and local reconstruction. We develop a set of techniques, which under certain conditions can be applied to construct local computation algorithms that run in \emph{polylogarithmic} time and space. Moreover, these local computation algorithms are easily parallelizable and capable of answering all parallel queries consistently. We apply these techniques to problems such as maximal independent set, radio network scheduling, hypergraph coloring and $k$-CNF. Our techniques are based on Beck's analysis in his algorithmic approach to the Lov{\'{a}}sz Local Lemma, a concentration bound on the sizes of a combinatorial structure called ``random query trees'' and constructions of small sample spaces for $k$-wise independent random variables.
> 
> Based on joint works with Noga Alon, Ronitt Rubinfeld, Gil Tamir and Shai Vardi.
> 
> Biography: 
> Ning Xie is an Assistant Professor in the School of Computer and Information Science at Florida International University. His research interests span many aspects of theoretical Computer Science with a focus on sublinear algorithms. He graduated from EECS MIT where his advisor was Ronitt Rubinfeld, and was a postdoctoral fellow at EECS
