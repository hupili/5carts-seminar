---
title: Hash Function Learning
author: Professor Wei-Shi Zheng
institution: School of Information Science and Technology, Sun Yat-sen University, China
date: 2013-08-30
link: http://www.eecs.qmul.ac.uk/~jason/
tags: ["hash", "learning"]
language: en
layout: review
mathjax: true
---

# Background

Tianhe 2, SYSU and Canton (Guandong)

application: Image search

Active learning.

## Hashing

K nearest neighbour search

traditional: pairwise distance. intractable.

subspace method.

### Data independent hashing

Locality sensitive hashing:

   * Sample w and b randomly and get the bits.

### Hash Function learned from data

Spectral Hashing (from a graph encoding similarity)

Spectral

similar nodes -- hashed to same bits
dissimilar nodes -- .. different

### Active Hashing

"relearn": all newly labelled data.

focus of active hashing: how to select data for users to label.

focus of this work: do not relearn all the data.

### Previous works

   * Most: assume data available in advance.
   Supervised learning.
   * Active Hashing.

## Smart Hashing Update

Traditional: update with all data.
This: select some of them, more efficient, same performance.

k hash functions.

   * old way: update all k bits.
   * new way: update important bits to catch the user's feedback.

Two strategy:

   * consistency selection
   * similarity selection

### consistency selection

assume class prior distribution balanced.
problematic for unbalanced case.

only use relations in the same class.

### similarity selection

$H$: matrix, data v.s. hash bit.

remove one column from $H$ each time.
Check the Frobenius norm of the difference between $S$ and $H \times H^T$.

If small, the bit does not influence old data.
We can update them for the new data.

### Experiment

similar precision. less time.

Liu, CVPR 2012.

### Comments from audience

not only save time but also a kind of regularization.
(limit the updated number of parameters)

## Online Kernel Hashing

process **sequential pairwise** data.
labeled, telling whether they are similar or dissimilar.

`$h(x) = sgn(W^Tx)$`

`$h = argmax (f^TW^Tx)$`, $f$ is in 1 and -1.

lPB, loss function

loss bound.

Minimal loss hashing (MLH).
use stochastic gradient update.
can be generalized to online learning.
theoretical bound available but rather loose.

## Q/A

Motivation of hashing, not classification:

   * kNN is most accurate with dense data.
   Want to approximate kNN.
