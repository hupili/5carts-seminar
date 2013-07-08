---
title: Multiparty Communication Complexity in the Number-in-Hand (NIH) Model
author: Qin Zhang
institution: IBM Research , USA
date: 2013-07-08
link: 
tags: []
language: en
layout: review
mathjax: true
---

Original title: Multiparty Communication Complexity in the Message-Passing Model

## Introduction

A model for proving lower bound.

   * Blackboard: one speaks, everyone hears. broadcast.
   * Message-passing: unicast.

Construction of coordinator - sites.

Equivalance of the two models.
only increase by factor of two through coordinator.

Prevoius:

   * a few papers in BB. no MP until 2012.

MP, motivated by distributed computation.

Number-in-the-forehead.

## Idea

   * Reduce a $k$-player problem to a 2-player problem.
   * Decompose complex to simpler ones.

Explore underlying communication patterns.

Two concrete examples in 2012.

## Symmetrization

...

k-bitwise XOR as an example.

Key: Find the right 2-players for reduction.

Example, graph connectivity:

   * $k$ sites each holds a set of edges
   * Goal: determine whether the graph is connected or not.
   * Trivial UB: each node compute a spanning forest locally and exchange.

Useful message:
trivial UB is tight for many graph and statistical problems.
--> should pursue approximation for further acceleration.

## Composition

   * Two modular problems.
   * Analyze separately. 
   * Overall complexity is the "product" of the two.

Distinct elements counting problem:

   * $k$-gap-majority
   * Set-disjointness.

## Other

Comment from Ke Yi:
Node partition is more practical than edge partition.
Node partition corresponds to the scenario of GraphLab and Google's Dremel.


