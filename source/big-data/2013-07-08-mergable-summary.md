---
title: Mergeable Summaries
author: Ke Yi
institution: HKUST, Hong Kong
date: 2013-07-08
link: 
tags: []
language: en
layout: review
mathjax: true
---

## Background

Summary: tradeoff between efficiency and accuracy.

Mergable: e.g. sum, max, can be applied on each summarized pieces.

Allow approximate computations:

   * Random sampling. 
   * Sketches: random linear projection.
   can be merged trivially because of linearity.
   JL transform, AMS, Count-Min, etc.
   * Frequent items.
   * Quantiles and histograms. ($\epsilon$-approximation)
   * Geometric coresets.
   (a carefully chosen subset of points). 

Ideal summary: associative, commutative.

   * Any computation tree.
   * MUD model. [Feldman et al. SODA'08].

**Generalizes the streaming model**:

   * Streaming: a special tree -- a line.
   * Thus can not do better than streaming model.

## Application

large-scale distributed computation:
programmers have no control on how things are merged.

MapReduce model.
not for everything.
not good for analytical queries.

Dremel. 
more often used than MapReduce inside Google.

   * Form tree structures. e.g. 4-5 layers.
   * Decompose queries, until to leaf servers. 
   * Merge layer by layer. 
   when to root server, concise data is presented.

Pregel: for large graph processing

   * all nodes send messages to neighbours. 
   * local combination. 
   calls for commutative and associative operations.
   * Programmers define combiners.
   May save a lot of traffic.

> Looks the same model as GraphLab.

Sensor networks:
no way to control the merge path.

## Merge random samples

If underlying population is known, can merge them by simulated sampling.

e.g. uniform sampling without replacement:

   * `$S_1=5,S_2=5$`
   * Take from set 1 with prob. `N_1/(N_1+N_2)`.

> with/ without replacement?

## MinHash

Retain $k$ elements with smallest hash values.

e.g. can be used to estimate the similarity between sets.

Combine: from top $2k$, take top $k$. -- trivial example.

## Heavy Hitters

Misra-Gries (MG) algorithm. [MG'82]:
find up to $k$ items that occur more than $1/k$ fraction of the time in a stream.

Algo:

   * Keep $k$ candidate
   * if monitored item, increase its counter.
   * If $<k$ items monitored, add new item with count 1.
   * Else, decrease all counts by 1.

Bound:

   * MG'82. $N/(k+1)$ -- too weak for mergable requirement.
   * [Berinde et al. TODS'10] -- too strong.

Every time decrement all counters:
remove $k+1$ distinct elements.
-- **the place to introduce errors**.

Merging algo:

   * Decrement all by `$C_{k+1}$`.
   * Remain $k$ counters.

## Epsilon Approximation

a more "uniform" sample.

   * Population.
   * --> get a sample (not so uniform)
   * --> Pick points further from the sample, making it more uniform.

A dual problem: quantile. 
i.e. given $\epsilon$-approx, can estimate the rank.

*equi-height* histogram.

## Quantile Problem

Quantile summaries:

   * GK. [Greenwald, Khana, SIGMOD'01].
   * ...

Equal weight merges: Munro-Paterson'80. 

   * Fill base cases: $k$
   * Merge two sets, sort, take every other element.

Improvement:

   * Randomized twist: randomly take even/ odd elements.
   * Consider an interval $I$:
   if even elements in $I$, unbiased; 
   if odd, +-1 error.
   * Consider the merge tree. 
   errors grows with level; 
   variance dominant by highest level.

> VC-dimension (?)

## Epsilon Kernel

   * A subset of points.
   * The convex hull approximate the distribution of the data points.

## Open Problems

...


