---
title: How Can Multi-Tenant Data Center Become Sustainable?
author: Dr. Shaolei Ren
institution: Florida International University
date: 2014-05-27
link: "http://users.cis.fiu.edu/~sren/"
tags: []
language: en
layout: review
mathjax: true
---

literature approaches for energy saving.

power proportionality,

cooling management, 

geographic load balancing.
e.g. allocate more request to cheaper locations

workload scheduling.

problem: 

   * co-location (multi-tenant) data center.
   * tenant: equipment
   * operator: facility, cooling.

Colocated data center:

   * 1000 colocated data center (from Google’s study)
   * 43B$, 2018
   * 62% Facebook’s servers in colocations

Problem:

   * No incentive to shift loads upon flat rate.

sustainability report from Greenpeace, 2014
[link](http://www.theguardian.com/sustainable-business/greenpeace-report-google-facebook-apple-green-data-centers).
[link](http://www.greenpeace.org/usa/Global/usa/planet3/PDFs/clickingclean.pdf)

GreenColo

Reverse Auction.

why not dynamic pricing?
adv. of RA:

   * tenants are not enforced to participate.

Focus: How operator decides winning bids.

minimize carbon footprint s.t. budget constraint.
off-site energy (elec. from grid) on-site energy (e.g. renewables).

Lyapnov approach.

PUE, Power Usage Efficiency. energy overhead.

colocations, most in downtown. Demand response more effective.

## Other problems

drought:

   * 1 billion gallon cooling water AT&T.
