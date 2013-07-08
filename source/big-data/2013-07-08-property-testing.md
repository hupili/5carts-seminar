---
title: The Art of Proving Lower Bounds in Property Testing
author: Kevin Matulef
institution: Aarhus University, Denmark
date: 2013-07-08
link: 
tags: []
language: en
layout: review
mathjax: true
---

2011-2012. 
working at [10gen](http://www.10gen.com/). 
developer of MongoDB.

## Introduction

How do we prove lower bounds for algorithms that do not see their whole input?

   * Property tester.
   * communication complexity.

## Testing Sortedness

sorted. v.s. 10%-far from sorted?

Upper Bound: $O(\log n)$. [EKKRV98]
Same lowerbound. [EKKRV98,F04]

Sampling random pairs does not work.
Bad example:

   * A saw shaped sequence:
   generally increasing;
   decrease every adjacent pair.
   * Actually, need square-root number of pairs to return the correct number.

The algorithm:

   * Repeat $c$ (constant depends on the $\epsilon$ times. 
   * Choose random $i$ and use binary search to find $A[i]$. 
   * If sorted, binary sort will work.
   * If not sorted, or 10% far from sorted, it is likely to fail.

## Property Testing

a function $f$. 
linear? 
monotone? 
$k$-junta?

Property tester:

   * YES, w.h.p. if has the property
   * NO, w.h.p. if $\epsilon$ far
   * Minimize the number of queries to the function

adaptive v.s. non-adapative property tester.

## Communication complexity techniques for property testing

Stronger bounds.

Yao's minimax method.

   * Design YES and NO distributions. (usually easy)
   * Show no deterministic algorithm can tell w.h.p. 
   if $f$ come from `$D_{YES}$` or `$D_{NO}$`. (usually hard)
   
## Example: monotonicity testing


