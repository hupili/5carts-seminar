---
title: Supporting Long Term Evolution in an Internet Architecture
author: Dongsu Han (Dong-Soo Han)
institution: Korea Advanced Institute of Science and Technology (KAIST)
date: 2013-08-06
link: https://sites.google.com/site/profdshan/
tags: ["Internet"]
language: en
layout: review
mathjax: true
---

## Introduction

Original network: a dumb data pipe.

CPU grows faster than network bandwidth (?).

   * network + computation: middle boxes. [Han, NSDI, 2012]
   * network + storage: in-network caching.

Evolution: = diversity + incremental deployment

   * network: gracefully introduce new functions.
   * End-points design.
   * Cross-cutting design. [Han, Sigcomm'13]

Communication orientation:

   * Host
   * Content. CCN [Jacobson 09]
   * Service. Serval [Nordstrom 12]

Problem of todays arch:
not flexible for new services, e.g. multi-cast.

## eXpressive Internet Architecture (XIA)

### eXpressive Internet Architecture (XIA)

```
Principal type + type specific identifiers
```

e.g. `Host + IP`

A case of IP:

   * get content, fail.
   * Application-driven recovery `-->` no incentive to upgrade intermediate nodes.
   * Active network: burdens of the network.

### Fallbacks

case:

   * Intent: Content.
   * Fallback: Host.

Encode multiple identifier:

   * Directed Acyclic Graph (DAG)-based addressing.
   * The overhead of sending DAG.
   * Prototype, XIA overhead near IP. XIA+fallback, worse than IP with small packets.

### Q/A

Original intention of content centric network:
shift the burden off the host; let the network handle more.

The control plane needs to be further solved.

## Transport protocol for end-points

**Congestion control** (CC) is special for transport protocol:
fairness and efficiency.

Protocols with different Congestion Control can not coexist.

TCP: end-point based algo. `-->` diversity.
Different end-points can pick their own goal.

XCP, RCP: network based algo. `-->` efficiency.
Feedback from the network.

### Decouple flexibility

   * sender: budget. no overuse of the budget.
   * flow's price.

Feedback. congestion price.
router updates price.

### Feed-forward

preload.

effect of reducing peak load.

### Diversity

Deadline support (`D^3`, sigcomm'11):

   * specify desired rate.
   * Best Effort (BE) service used to meet deadline, fixed price.

pricing per byte.
In simulation, routers update every packet.

## References

   * Han, Sigcomm 13, FCP, <http://pages.cs.wisc.edu/~akella/papers/fcp-sigcomm13.pdf>
   * Code of XIA, <https://github.com/xia-project/xia-core>
