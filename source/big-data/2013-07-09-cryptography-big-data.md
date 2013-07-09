---
title: Cryptography in a big data world --- the case of streaming
author: Periklis Papakonstantinou
institution: IIIS, Tsinghua University, China
date: 2013-07-09
link: http://www.itcsc.cuhk.edu.hk/Workshops/Big_Data_Workshop/Periklis.html
tags: []
language: en
layout: review
mathjax: true
---

"ask not what dig data can do for you but what you can do for big data"

## Streaming Cryptography

   * big key + big message
   * small internal memory
   * generate real-time output data in an online fashion

constrast to stream cipher:
key of stream cipher can be stored in memory.

Impossibility result number 1. (?)
(a complex theory)

Parameters:

   * # of streams
   * # of passes
   * internal memory
   * **stream size**

Example:

   * SORT. 
   * 1 stream, takes # elements passes.
   * 1 stream, log n passes, using MergeSort
   * 2 stream. (?)
   with logarithmic passes, 
   can compute any log-space functions.

## Primitives

Pseudo-random generator.
efficiently computable.
can beat a polynomial time tester.

One-way-function (OWF).
efficiently computable.

## Territory of streaming crypto

black-box constructions.
streaming computation.
cryptop in NC0.
shrinking the output.


