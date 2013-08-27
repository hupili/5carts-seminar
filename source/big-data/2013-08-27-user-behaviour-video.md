---
title: User Behavior and Resource Allocation in Online Video Services
author: CHEN Liang
institution: CUHK/IE
date: 2013-08-27
link:
tags: ["video", "big data", "user behaviour", "fake view", "Tencent"]
language: en
layout: review
mathjax: true
---

## Background

50% video traffic

## Data

perfect QoE.
remove views with QoE impairments (>1 freeze).

80% views, early departure.

viewing ratio.
check early departure.
follow power-law.

pattern: arrival -- short views -- long views.

key behaviour: early departure.

## Smart Progressive Download

balance QoE and cost

waste: Download but not viewed

YouTube: buffering + steady phase.

Youku/ Tencent: divide into chunks.

common HTTP downloading: best effort.

Phase:

   * browsing phase: high departure rate.
   * viewing phase: low constant departure rate.

## Fake View

case: abnormal view, Tencent, 4 machine, peak at noon.

features: # of views per user; IP; video type; release time.

entropy of views. user's distribution on videos.
IP's distribution on videos.

entropy of videos.

Transductive SVM

## Popularity

view count not reliable: fake view, misleading titles

Douban score, map with user behaviour.


