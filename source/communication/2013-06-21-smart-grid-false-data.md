---
title: Defending False Data Injection Attack in Smart Grid
author: Angela Zhang Yinjun
institution: NWU
date: 2013-06-21
link: http://home.ie.cuhk.edu.hk/~yjzhang/ 
tags: ["smart grid", "false data injection", "security", "rank", "steiner tree"]
language: en
layout: review
mathjax: true
---

## Background

   * Meters are deployed in smart grid. e.g. voltage meters.
   * Physical formula: expression of `cos`, `sin` of phase. 
   * Make a DC assumption: voltage becomes linear in phase. e.g. `$v=\theta_i-\theta_j$`. 
   
## Model

`$$ z=H\theta + e$$`

$z$ is the reading of meters. $e$ is the random error. $H$ encodes how a reading is generated:

   * (**line measurement**) For edge meters, it's `[…, 1, …, -1]`, The phase difference of incident vertices: `\theta_i-\theta_j$`. 
   * (**injection measurement**) For vertex meters, it's `[…, -1, …, 2 …, -1]` (a two incident edge example). 
   
## Solution

Assume `$e$` is Gaussion, Maximum Likelihood Estimation (MLE) leads to a Least Square (LS) problem. 

Common bad data detection approach:

   * Do MLE first. 
   * Look at the residual. 
   * Large entries are bad data.
   
The above approach is subject to structured attack:

`$$a=\bar{H}c$$`

The protection scheme:

   * Assume some entries of `$a$` is 0 (protected meters)
   * Force the only solution of `$c$` to 0.
   
Want to find the minimum amount of entries of `$a$` to protect. 

A bunch of transformations:

   * Algebraic: the submatrix induced by chosen rows (entries of `$a$`) is full rank. NPH.
   * Transform to graph theoretic conditions. 
   * Special case, when only line measurements are used --> Steiner Minimum Tree (SMT).
   * Transform to Mixed Integer Linear Programming (MILP).
   
Heuristics. 

> I missed what is the `$K$`? like a key parameter to control complexity and degree of approximation

## Paper

<http://arxiv.org/abs/1304.4151>