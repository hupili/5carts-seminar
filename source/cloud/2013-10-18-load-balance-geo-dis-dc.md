---
title: Load balancing in geo-distributed datacenters
author: Henry Xu
institution: Computer Science, City University of Hong Kong
date: 2013-10-18
link: http://www.cs.cityu.edu.hk/~hxu/
tags: ["cloud", "data center", "load balance", "geo"]
language: en
layout: review
mathjax: true
---

assumption:
every data center has all user data.
problem:
redirect user requests to load balanced DCs.

[Sigcomm'09. A. Qureshi.].
RTO (Regional Transmission Office).
Electricity price vary at places.

Objective:

   * Users: care latency.
   Amazon, 2006, 1% less revenue for 100ms more delay.
   * DC: cost

variable: query routing

User latency modeling:

   * network: distance; empirical.
   * process: queueing models.
   * processing delay for multiple DCs has not been (well) modeled yet.

## Objective

different cost

Carbon footprint: environmental cost.
Different places use different energy sources (fuel).
Fuel mix stays stable for locations.
one more price term in obj.

Renewable energy, e.g. wind, solar.
on-site renewable generation: cleaner, cheaper.
use renewable whenever possible.
subtract a term from the obj.
(L.L. Andrew).
renewable only counts for small portion, e.g. 1%.
So load can be moved to grid freely.

Model the cooling overhead.
[PUE](http://en.wikipedia.org/wiki/Power_usage_effectiveness).
in this talk: total power / server power.
baseline: constant PUE factor.
Emerson,(R), Liebert DSE:
PUE depends on cooling mode and temperature.
cooling mode: mechanical (compression); outside air.
[FB PrinevilleDataCenter](https://www.facebook.com/PrinevilleDataCenter)
outside air used in practice, no mechanical mode,
turn off DC if overheat.
model: change constant to dynamic PUE; can be predicted; no change in formulation.
PUE factor changes in the time-scale of hours.

bandwidth cost.
variable become tuple `<DC, network>`.
different price to send back response data along different paths.

adjust between interactive workload (e.g. web page)
and batch workload (data mining).
Google philosophy: every machine should be general, can do different jobs (?).
2009 Google data, 30% server utilization (Minghua, ?).
new problem: joint allocation and request routing.
[ICAC'13, Hong Xu].

Previous efforts:
change formulation.
general framework?
general query routing algorithm?

## A General Formulation

common assumption:

   * offline optimization, time-scale, hourly, e.g. 30min.
   * user demand predictable, price unknown.

tradeoff between performance and cost.

   * user-specific utility function.
   concave to the amount of resources allocated.
   $U_i(x_i)$, $x_i$ is a vector (allocation to DCs).
   * DC cost, convex.
   * sum of user's utility minus DC cost.

constraints

   * allocated resource equals the demand.
   * user, QoS constraints, assumed to be convex sets
   * DC capacity constraints, assumed to be convex sets

fairness not considered?

a user in the formulation can be a metropolitan are, DSN proxy.
only hundreds of variables.

[Akamai, SIGOPS'10], user is IP prefix.
simple algorithm, round robin depending on the IP prefix.

distributed algorithm.
usual: dual-decomposition + subgradient methods.

S. Boyd, et. al..
distributed optimization and statistical learning via the alternating direction method of multipliers.
Foundations and trends in Machine Learning, 2011.
ADMM.

ADMM.
Augmented Lagrangian,
add penalty term of equality constraints.
advantages:
better convergence; good numerical stability.
direct application of ADM on the problem is centralized:
penalty term is not decomposable.

auxiliary variables.
users and cloud solve separately.

extension: three sets of variables?
ADMM only deals with two sets of variables.

## Future

realistic charging schemes.
e.g. Google's contracts with electric utilities online.

   * Basic facility
   * demand.
   utility, measure, e.g. 15min.
   over one month, take the maximum demand.
   i.e. peak demand charge.
   * energy charge: normal billing method.

one Sigmetric paper:
use battery to save cost.
(shaving peak demand).

idea:
same situation in smart grid;
EVs are natural big batteries.

demand response in smart grid.
grid can explicitly incentivise DC to shape their demand.
DC response whether to take this offer.


