---
title: "How to Divide a Complex-valued Cake? Complex-demand Knapsack Problem and Combinatorial Allocation in AC Electrical Systems"
author: Sid Chi-Kin CHAU
institution: Masdar Institute, Abu Dhabi, UAE
date: 2013-08-23
link: http://www.sustainablenetworks.org/?p=136
tags: ["complex", "smart grid", "resource allocation", "optimization"]
language: en
layout: review
mathjax: true
---

http://www.sustainablenetworks.org/

dynamo generator:

   * periodic current and voltage.
   * complex number representations.
   * power is also a complex number.
   * real part: active power.
   * imaginary part: reactive power.
   capacitors generate it;
   inductors consume it.
   * norm: apparent power.

Utility maximized resource allocation.

Constrain real and imaginary parts separately:
lead to 2D-Knapsack problem.

Constrain the apparent power:
lead to complex-Knapsack (CKS) problem.

prior results of Knapsack problem: (from the slides)

>   * FPTAS for 1DKS: Using dynamic programming and scaling (Lawler, 1979)
>   * No FPTAS for mDKS where m   2: Reducing to equipartition problem (Gens and Levner, 1979)
>   * PTAS for mDKS where m   2: Using partial exhaust search and LP (Freize and Clarke, 1985)
>   * Truthful (monotone) FPTAS for 1DKS: Monotonicity (Briest, Krysta and Vocking, 2005)
>   * Truthful bi-criteria FPTAS for multi-minded mDKS: Dynamic programming, scaling and VCG (Krysta, Telelis and Ventre, 2013)

A pictorical reformation of the problem:

   * add vectors within a semi-circle.
   * maximize the utility.

Divide into several cases depending on the angle spread of resource consumption vectors.

Difference from resource allocation in cloud:

   * Many other resource allocation is **positive** and **real value**-ed.
   This is previous classical Knapsack problem.
   * In power system, the imaginary part can be either positive or negative
   depending on the nature of the appliances.
   Resource consumption can cancel each other.


