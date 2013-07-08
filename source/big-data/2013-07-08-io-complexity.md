---
title: On the I/O Complexity of Dynamic Element Distinctness
author: Yufei Tao
institution: CUHK
date: 2013-07-08
link: http://www.itcsc.cuhk.edu.hk/Workshops/Big_Data_Workshop/Tao_Yufei.html 
tags: []
language: en
layout: review
mathjax: true
---

## Background and Problem Introduction

Background: author come from database area. 

Online version of element distinctness: 
given a multiset; insert; query whether the multi-set is a set.

Generalization:
how many distinct elements are there?

> Like counting number of IP sources

External Memory (EM) model:

   * Machine: bounded memory ($M$) and disk; disk formatted into blocks of $B$ words.
   * I/O: read/ write in unit of blocks.
   * Time: count I/O; CPU is free.

EM basics:

   * Sorting $N$ elements: $\Theta(N/B \log_{M/B} N/B)$
   * Membership by hashing:
   space $N/B$; update $O(1)$; query $O(1)$.
   * Linked list:
   space $N/B$;
   insert $1/B$;
   delete $1/B$.
   
> EM can give complexity terms less than 1. See the linked list example.

## Basic Solution to Distinctness

Sol 1: Hashing.

   * See the complexity of hashing.

Sol 2: Linked list.

   * Space: linked list
   * insert: $1/B$ amortized.
   * query: use sorting.

EM: important to understand **buffering**.

## Theorem

Las Vegas: correct for all query; time can be long (?)

Polynomial structure: $N^{O(1)}$.

Repungnant to buffering:

   * No: O(1).
   * a little buffering: linear time.
   * No previous problem exhibit such phenomenon.

## Existing works

Offline element distinctness:

   * Sorting is the best. [Arge, Knudsen, Larsen' 93]

Dynamic ED:

   * ...

Tradeoff betwen update and query time.

Indivisibility.

**Chronogram**:

   * Sequence of insert followed by a query.
   * Chop sequence into exponentially increased segments.
   * Constant probability to fall into each segment.
   * Good for prove logarithmic bounds.

Cell probe model.

Lopsided Set Distinctness.

## Element Distinctness with Group Insertion (EDGI)

   * G-insert: add an $(N/B)$-subset $G$ to $S$.
   * query: $S$ is distinct?

Algo:

   * Insert a uniformly random  $(N/B)$-subset
   from all possibilities


