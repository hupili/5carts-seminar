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

HOTPLANET 2013

## Smartphones, Crowds, and the Cloud: Population Guided Sensing Systems

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


--------


## Efﬁcient Social Network Data Query Processing on MapReduce

Lixin Gao

RDF: subject, predicate, object

SPARQL: W3C. used to query RDF.

Traditional: Transform SPARQL to SQL.
not scalable.

RDBMS.

state-of-the-art: direct map SQL to MapReduce.
problem: intermediate data is too large.

observation: duplicated fields

primitives:

   * multiple-join-with-filter:
   add a filter step to reduce.
   * selection-join:
   selection does not need a separate job.

Apache Pig, Apache Hive.

Notes:

   * Looks like multiple-join-with-filter's
   filter stage can be implemented in mapper for better efficiency.

## Extrapolating Sparse Large-Scale GPS Traces for Contact Evaluation

overcome mobility data sparsity

trajectory projection

## Metric Convergence in Social Network Sampling

random, stratified, crawling

BFS: center

DFS: outskirts

20% is needed to get good estimators.

5 years data collection of full Digg.
development is about 2 months.
maintenance cost is high for the DB part.

data not open.
planning for a platform to neutrally evaluate sampling algorithms.

------


## Lessons Learned from the NetSense Smartphone Study

Aaron Striegel

privacy

PhoneLab -- Geoffrey Challen

750K SoCS grant.
75K for devices.

200 users.

CyanogenMod

"The Checklist Manifesto"

active phones drops with time

quiz response drops

Lessons:

   * phone reimbursement. free phone?
   * Cohort effects

## Information Bazaar: a Contextual Evaluation

Hamed Haddadi

Get data from the user.
how much they value their data?
some inconsistency observed on people.

privacyvalue.org

<http://www.eecs.qmul.ac.uk/~marjan/privacy_site/index.php>

anchoring effect

cookie brokers

## It’s Tea Time: Do You Know Where Your Mug Is?

Yanyong Zhang

Octopus

smart-building.

app built.

hard time in publication (?)

track mugs in the lab.

example: cars.
smart cars? many existing sensors.
e.g. gauge, speed, etc.

Smart building deployment lessons:

   * deployment not standardized.
   * use cases not clear
   * manageable for building owner

hourglass design

from time to time, ask students to write new apps.

app: is my advisor in the room:

   * chair
   * mobility sensor
   * door open


