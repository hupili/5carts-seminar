---
title: Certificate Reputation: Cryptographic Analysis of Public Keys and Certificates in Use
author: Dr. Brian A. LaMacchia
institution: XCG Security & Cryptography, MSR
date: 2014-01-28
link: 
tags: []
language: en
layout: review
mathjax: true
---

FLAME, CertRep

## FLAME

<http://en.wikipedia.org/wiki/Flame_(malware)>

targeted.

MITM attack on windows update.
key cryptographically valid (chain back to MS root).

MS LSRA PA

MD5 collision attack. [WY05].
chosen-prefix attack.

Shouldn't use MD5 and even sha1.

BitCoin, sha256, collision in 4 hours..

## CertRep

gather cert chains at many clients.
sample 1/ 17,000.

SmartScreen.

COSMOS, MS's internal data storage and computation.
Dryad (DAG), SQL-ish

collect certs while crawling?
get top 1M sites.

Hash collision. batch GCD, [Ste12].

Merkle-Damgard construction.

Wang shows, MD5, precise changes in intermediate block, results in same output.
Marc Steven's PhD thesis, algorithm.

April, 2016, want to retire sha1.

batch GCD:
http://eprint.iacr.org/2012/064.pdf

"FactHacks: RSA factorization in the real world" at 29C3."

Bernstein.

http://facthacks.cr.yp.to/batchgcd.html

attack on certs,
e.g. serial number (predict the increase),
inject non-useful sections.

FLAME is based on 04-05 paper.
Requires very sophisticated analysis.


