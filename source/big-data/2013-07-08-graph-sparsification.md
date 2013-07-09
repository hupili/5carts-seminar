---
title: Graph Sparsification
author: Debmalya Panigrahi
institution: Duke University, USA
date: 2013-07-08
link: http://www.itcsc.cuhk.edu.hk/Workshops/Big_Data_Workshop/Debmalya_Panigrahi.html
tags: []
language: en
layout: review
mathjax: true
---

**values of a set of grpah parameters are (approximately) preserved.**

## Spanners and Emulators

   * a "small" set of roads that approximately 
   preserve min distances between all locations.
   * one example: complete graph to a star graph.
   -- additive error only 1.

Spanner: a subgraph of the input graph.

   * Additive
   * Multiplicative

Emulators: new edges can be added.

## Spectral Sparsifiers

Laplacian.

quadratic form of Laplacian. 
Encodes edges in cuts with characteristic vectors.

## Cut Sparsifiers

Historically, cut sparsifier came first.

Applications:

   * algo. depends on number of edges.
   * efficient sparsifiers.

## Sparsification by sampling

uniformly sample by $p$ and upweight by $1/p$.
problem is to lose "bridge" edges.

Calls for non-uniform sampling.

   * Edge connectivity:`$\lambda_e$`
   size of smallest cut containing e.
   `$p_e=\log n / \lambda_e$`
   * can show $n \log n$ edges.
   * [Benczur-Karger' 96] open problem: can bound?

[Benczur-Karger' 96] :

   * Edge strength: `$s_e$`.
   maximum values $s$ s.t. $e$ belongs to an $s$-connected induced subgraph.
   * `$s_e \le \lambda_e$`.

Spielman-Srivastava' 08: effective conductance;
not easy to compute.

edge connectivity, strength conductance.

## Bounding Deviation

Chernoff bound for single cut.

[Karger] : not so many cuts. (polynomial given a size)

Categorize edges in t cut according to `$\lambda_e$`.
-- cut projections.

splitting-off.
[Mader' 78]

Cut counting theorem:
1) via a sample and contraction algorithm;
2) output a uniform one;
3) product to bound the survival probability.

## Some results

a 2-D plot: complexity v.s. sampled graph size. 
This works lies in the lower-left corner.

> To make a sampling procedure practical,
> itself should not be too complex.

## Open problems

   * Near linear-time sparsifier for linear (in n) edges?

## Paper

Wai Shing Fung, Ramesh Hariharan, Nicholas J. A. Harvey, Debmalya Panigrahi. A General Framework for Graph Sparsification. ACM Symposium on Theory of Computing (STOC), 2011.

