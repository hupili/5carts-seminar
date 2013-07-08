---
title: "Homomorphic Sketches: Shrinking Big Data without Sacrificing Structure"
author: Andrew McGregor
institution: University of Massachusetts, Amherst, USA
date: 2013-07-08
link: http://www.itcsc.cuhk.edu.hk/Workshops/Big_Data_Workshop/Andrew_McGregor.html
tags: []
language: en
layout: review
mathjax: true
---

## Background

File comparison:

   * Direct
   * hash $\log(n)$ for two $n$-bit files.
   * construct sketches and compare e.g. hamming distances.

Basic idea:

   * file as vector, $v$
   * **linear projection** $M$. --> $Mv$.

Reduce dimension while preserving properties.

Theory in connection with compressive sensing, metric embedding.

Generalization:

   * combinatorial and group theoretic structure?
   * homomorphic compression: run algorithms on sketched data.

> A more general goal like our graph property preservation study.

## Some results:

Graph compression:

   * $n$ files encode rows of an adjacency matrix.
   e.g. social network.
   * Theorem: $O(polylog(n))$ bit fingerprints to check graph connectivity.
   * Extension to estimating cuts and eigenvalues.

Texts:

   * Hamming distance isn't robust to misalignments.
   * Theorem: check equality of files **up to rotation**
   with fingerprints of length $D(n)polylog(n)$.
   * $D(n)$ (?)
   * Cyclic rotation is the operation that is preserved in fingerprints.

## Graph Connectivity

   * Theorem: $O(polylog(n))$ bit fingerprints to check graph connectivity.
   w.h.p.
   * Corollary: can monitor connectivity in a dynamic graph.

All works here are for undirected graph. 
Directed graph is hard for even simple queries.

Bridge: an edge that is essential to global connectivity.
Looks like dilemma that they must encode this edge 
and they can not distinguish it locally.

### Ingredient 1: Basic Algorithm

   * Loop until no edges.
   * Each node, pick incident edge.
   * for each connected component, pick an incident edge.

After $O(\log n)$ rounds, selected edges include a spanning forest.

### Ingredient 2: sketching neighbourhood

   * For node $i$, let `$a_i$` be indexed by node pairs. 
   For $i<j$, put `$a_i[i,j]=1$`, and -1 vice versa.
   * add up two `$a_1+a_2$`: encode the cuts.
   * Lemma: The support of the vector encodes the cuts.
   * Lemma: a result similar to compressive sensing. 
   Exists random $M$ such that we can deduce $support(a)$ from $Ma$.
   [Jowhari, Saglam, Tardos, 2011].

### Put together

   * Sketch for node j: `$Ma_j$`.
   * Run algorithm in sketch space.
      * Use `$Ma_j$` to get incident edges
      * 2 to n
      * Find cut sets of $S$.
      * (?)

### Extension to sparsification

   * $k$ connectivity test.
   * $1+\epsilon$-approximate graph cut
   * Spectral sparsifier.
   a poly n factor. can do better?

### k-connectivity

Algorithm: get spanning forest $k$ times on the residual graph.

k-skeleton.

Emulation:

   * Generate $k$ different $M$.
   * Find spanning forest of $G$.
   * Subtract in the sketched space.
   * Repeat $k$ times.

### Approximation of all cuts

Theorem (Fung, et al.):
sample by $p$, upweight by $1/p$.

> The Karger's one?
> OK. sample with a factor related with capacity of $u-v$ cut.

## Misalignment

### False start

Rabin-Karp

Fermat's Little Theorem

Polynomial in random $r$: $f(r, a)$.

Rotation is encoded by multiplication of $r$.

Schwartz-Zippel:
a result on polynomial identity testing. 
(See Lau 2013 slides, L1)

Result: not false negatives but false positives.

### Beyond Schwartz-Zippel

Abel's irreducible theorem.

## Conclusions

   * Homomorphic Sketches:
   compress s.t. we can run algorthms on compressed data directly.
   Resulting algorithms are **parallelizable** and **streamable**.

## Q/A

Any graph properties that are not sketchable?


