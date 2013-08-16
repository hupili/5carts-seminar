---
title: HotPlanet Notes
author:
institution:
date: 2013-08-16
link: http://conferences.sigcomm.org/sigcomm/2013/hotplanet.php
tags: []
language: en
layout: review
mathjax: true
---

## HOTPLANET 2013 Keynote Talk Smartphones, Crowds, and the Cloud: Population Guided Sensing Systems

Keynote

Nic Lane

sense:
energy, computation, communication

CrowdSense@Place

learn:
noise,
large,
complex

community similarity networks.

share:
inform,
visualization,
privacy

challenges:

   * symbolic user relationships
   * scaling

### community similarity networks (CSN)

Ubicom'11 best paper

population diversity

crowd sourced data and labels.

weighted graph to capture similarity between people.

   * physical: age, etc. Gaussian kernel
   * lifestyle: location, time, etc.
   * senser data:

similarity sensitive boosting, **co-training**

personalized model from selective crowd data

   * isolated model
   * single model
   * naive-multi

### CrowdSense@Place (CSP)

understand the semantics of a place.

background, mobility pattern, etc.

opportunistic sensing.

multi-modal classifiers to extract place hints.

topic model (LDA):

   * term: place hint
   * topic: place category

low quality data. use redundancy

### Population Guided Sensing

identifying sub-groups with special collective properties.

sensing networked phenomenon.


----

## What’s in a Name? Decoding Router Interface Names

Paul Barford

device on end-to-end path have fundamental impact on communication.

objective: test the properties of device.
e.g. type, manufacturer

Challenges:

   * ISPs consider device info. senstitive.
   * NMAP is considered as attack.

traceroute -- IP address of a interface -- domain names -- get device info.

use **rDNS**.

**HINFO** records.

why embed information? for troubleshooting, whitelist.

tags. 70% names have at least 2 tags.

NONOG survey.

features. hierarchical clustering.

https://github.com/jc-wail/WAIL/tree/master/PathAudit

## Trace Selection for Improved WLAN Monitoring

Matteo Sammarco

reduce WLAN monitors and also to achieve similar trace coverage

Intra-flow-similarity: Jacards coefficient

Inter-flow-similarity: TF-IDF, IFS

similarity graph.

future.
use community detection algorithms to find the exact number of traces

## Internet Atlas: A Geographic Database of the Internet

Ramakrishnan Durairajan

also from Paul Barford's group.

objective: geo-info. DB.
augment with other data, e.g. Twitter, weather, etc.

Internet Topology Zoo

http://atlas.wail.wisc.edu/

Google GeoCoder. use URL params.

Parse links from images.

## A Framework for Monitoring and Measuring a Large-Scale Distributed System in Real Time

ZHAN Lei

real system deployment



