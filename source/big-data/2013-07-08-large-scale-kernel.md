---
title: Large-Scale Kernel Density Estimates - Smoother is Better
author: Jeffrey Phillips
institution: University of Utah, USA
date: 2013-07-08
link: http://www.itcsc.cuhk.edu.hk/Workshops/Big_Data_Workshop/Jeffrey_Phillips.html 
tags: []
language: en
layout: review
mathjax: true
---

## Introduction

data points in 1-D. 
a point set.
want to find a continuous function to approximate the density.

Standard practice:

   * Make buckets.
   * Do histogram. 

Strange property:

   * Change the starting point of first bucket. 
   -- all histogram changes.

Improve:

   * Improved: Put bucket around points. -- some spikes.
   * Average over many different starting points. -- better.

Kernels:

   * Gaussian
   * Triangle -- same as the averaged histogram
   * Epanechnikov 
   * Ball

## Range Space

$\epsilon$-sample.

## Large scale

   * Varadarajan'98, slow
   * mergeable summary. the quantile problem.
   * z-order.
