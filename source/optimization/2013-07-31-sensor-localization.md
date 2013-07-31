---
title: "First Order Method on Sensor Network Localization"
author: Sze Kam Fung
institution: SEEM, CUHK
date: 2013-07-31
link:
tags: ["sensor", "localization", "SDP", "QCQP"]
language: en
layout: review
mathjax: true
---

## Background

wireless sensor networks.

sensor localization: angle, distance

only distance considered in this work.

## Methods

distributed:

   * beacon-based localization
   * coordinate system stitching.
   local map of each parts and stitch later.

centralized:

   * multi-dimensional scaling (MDS)
   * optimization (?) (main focus here).
   QCQP.
   can not be globally solved (?).
   `-->` SDP relaxation.

## Terms

Two type of nodes:

   * Anchor: pair-wise distances are known.
   * Sensor:.

Distance:

   * Anchor-Sensor
   * Sensor-Sensor

Noise settings:

   * noiseless: feasibility problem.
   * noise: estimation problem.
   MLE of squared error.

Anchor:

   * present
   * absent

## Biswas and Ye's SDR

SD Relaxation

SDP relaxation.

Map to high dimension with rank constraint.

Properties:

   * Rank of solution may be larger than required rank.
   * Impose regularizer on the rank.
   **Use trace minimization + p-norm regularizer**.

## Algorithm

Assumption:

   * connectivity assumption.

All previous models can be casted into.

`$$ minimize \pi(Z)=tr[CZ] + \mu ||Z||^p_p $$`

s.t. `$tr[A_iZ]=b_i$` and `$Z \in S^n_+$`

`$\epsilon$`-gap, similar notion to duality gap.

potential function.

## Simulation

An edge addition process to preserve rigidity:

   * Start with a 4-node clique.
   * Create alias of a node; Substitute original edge; add another edge.

Performance measure:

   * Position Error. (coordinates difference from ground truth)
   * Rank of Solution.
   * Edge Error. (differences between pairwise distance)

Initialization methods:

   * SDP
   * Trace
   * Maximum Variance Unfolding (MVU)


