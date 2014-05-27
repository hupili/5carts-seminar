---
title: Scanning of Real-world Web Applications for Parameter Tampering Vulnerabilities
author: Adonis P.H. FUNG
institution: CUHK IE
date: 2014-05-27
link: 
tags: []
language: en
layout: review
mathjax: true
---

tested four banks, transferring application.

Flow:

   * response. CSRF1 in hidden input.
   * request. Submit: SESSIONID, CSRF, FROM, TO, AMOUNT
   * response. after validating FROM, AMT. Store TO in session.
   * request. confirm TO.

Improper validations at server. (how to know?)

existing scanners: crawl-once-fuzzy-many (stateless)

state-aware fuzzer. UsenixSec'12

the scanner: CRS.

[Wang Tielei](https://sites.google.com/site/tieleiwang/)
is also in BlackHat’13 and BlackHat’14.


