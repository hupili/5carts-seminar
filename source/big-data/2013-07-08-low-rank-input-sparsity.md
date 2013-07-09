---
title: Low Rank Approximation and Regression in Input Sparsity Time
author: David Woodruff
institution: IBM Research, USA
date: 2013-07-08
link: http://www.itcsc.cuhk.edu.hk/Workshops/Big_Data_Workshop/David_Woodruff.html
tags: []
language: en
layout: review
mathjax: true
---

> We improve the running times of algorithms for least squares regression and low-rank approximation to account for the sparsity of the input matrix. Namely, if nnz(A) denotes the number of non-zero entries of an input matrix A:
> 
> we show how to solve approximate least squares regression given an $n x d$ 
> matrix A in $nnz(A) + poly(d log n)$ time
> we show how to find an approximate best rank-k approximation of an $n x n$ matrix in 
> $nnz(A) + n*poly(k \log n)$ time
> All approximations are relative error. 
> Previous algorithms based on fast Johnson-Lindenstrauss transforms took at least 
> $nd \log d$ or 
> $nnz(A)*k$ time.

## Low-rank regression

### subspace embdding

$SA$.

   * S: d by d
   * A: d by n

S does not have to be Gaussian, i.i.d:

   * "Fast Jhnson-Lindenstrauss matrix"
   * Form of S: `P*H*D`
      * D: diagonal, +1 and -1
      * H: Hadamard transform
      * P: chooses a random (small) subset of rows of `H*D`.

Intuition: can sample vectors to approximate the norm;
Sparse vector is hard to sample;
Hadamard transform spread the norm over all dimensions;
sampling works.

### This work

S: k by n 

   * Single randomly chosen non-zero entry per column.
   either +1 or -1.

For certain $k=poly(d/\epsilon)$, w.h.p. for all $Ax$:
`$|SAx|_2=|(1 \pm \epsilon)Ax|_2$`

a net

Leverage scores

connection to perfect hashing

sketch of a crude proof:
separate large and small coordinates and argue for each one
-- large, small, cross-terms. 

[DKS, optimized]

## Low-rank approximation

...

## Extensions

preconditioners

   * High precision regression
   * QR decomposition of `S*A`


