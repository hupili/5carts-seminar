---
title: "Protecting the Physical Layer: Threats and Countermeasures to Communication System and Smart Power Grid"
author: Suzhi Bi
institution: IE, CUHK
date: 2013-07-19
link: http://personal.ie.cuhk.edu.hk/~bsz009/
tags: []
language: en
layout: review
mathjax: true
---

## Introduction

False Data Injection Attack (FDIA).

Iran nuclear facility attack by a virus, "stunnet(?)".
Make the system over-heat.

DC power flows.
The phase difference is usually less than 5 degree.
So the approximation is OK.

Former counter measure of injection.
ISO.
MLE and see residual.
FDIA can resuls in 50% bias.

## Partial knowledge attack

Decompose. (?)

Find a min cut to separate target bus and reference bus.

Add super node to connect to the set of nodes intended to compromise.

### Power market

suppliers -- system operator -- consumers

day ahead market. submit bids.

local marginal price.

operator always want to relieve the congestion.

false data can alter the price.

### Summary

sufficient and necessary condition for attack.

DC estimate is widely used by operator.
As long as they use DC estimate, it's subject to this FDIA.

## Defense

Two general methods:

   * Limit attacker's knowledge of the topology.
   * Protect meters.

See [R1].

## Related Notes

   * [R1]: `2013-06-21-smart-grid-false-data`

