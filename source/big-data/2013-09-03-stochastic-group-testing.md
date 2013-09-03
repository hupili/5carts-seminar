---
title: Stochastic Threshold Group Testing
author: Sheng Cai
institution: Information Engineering of CUHK
date: 2013-09-03
link:
tags: ["group testing", "stochastic"]
language: en
layout: review
mathjax: true
---

Group testing.

Threshold group testing: [Dam06]

   * <l, negative
   * >u, positive
   * random within l and u

Gap model here:

   * bernoulli gap.
   * linear gap.

transversal design.

indicator group/ reference group.

family.
different partitionings.
classical: $\log n$ families.

I need more background.
<http://en.wikipedia.org/wiki/Group_testing>
The wiki page only contains classical group testing.

More info.

> Title: Stochastic Threshold Group Testing
>
> Authors: Chun Lam Chan, Sheng Cai, Mayank Bakshi, Sidharth Jaggi, Vankatesh Saligrama
>
> Abstract:
> We formulate and analyze a stochastic threshold group testing problem motivated by biological applications. Here a set of $n$ items contains a subset of $d \ll n$ defective items. Subsets (pools) of the $n$ items are tested. The test outcomes are negative if the number of defectives in a pool is no larger than $l$; positive if the pool contains more than $u$ defectives, and stochastic (negative/positive with some probability) if the number of defectives in the pool is in the interval $[l,\,u]$. The goal of our {\it stochastic threshold group testing} scheme is to identify the set of $d$ defective items via a ``small'' number of such tests with high probability. In the regime that $l = o({d})$ we present schemes that are computationally feasible to design and implement, and require near-optimal number of tests. Our schemes are robust to a variety of models for probabilistic threshold group testing.
