---
title: Probabilistic Graphical Models for Data Mining and Recommendation in Social Media
author: Martin Ester
institution: School of Computing Science Simon Fraser University, Canada
date: 2013-10-17
link: http://www.cs.sfu.ca/~ester/
tags: []
language: en
layout: review
mathjax: true
---

four effects:
social influence, correlation influence, selection, transitivity

CF, user-based recsys, problem for cold start user

memory-based approach (?)
(neighbourhood-based).
MoleTrust, TrustWalker.

(SocialMF).
social correlation:
user vector is a linear combination of his friends.
compare with [Ma, 2009, Social Trust Ensemble].
difference: in STE, friends govern the ratings directly;
in this work, friends govern user factor and then indirectly influence ratings.
SocialMF outperform STE.
k=5,10
(small compared with King's group, e.g. k=20,40).
(? not enough to capture the factors)

clustering-based approach.
assign users/items to clusters and maka recommendation on a per cluster basis.
Generalized Block Stochastic Model (GBSM).
not as good as SocialMF;
however, userful for link prediction (via ROC).

aspect-based opinion mining.
e.g. for a camera: picture, zoom, battery, etc.
challenges: different head terms (term normalization);
different modifiers (adjective normalization);
noise.
LDA-based model.
topic model:
unsupervised learning;
perform aspect extraction and grouping at the same time.
ILDA [sigir'11], (equiv. to D-PLDA).
review: a bag of opinion phrases, i.e. head term + modifier.
everything depends on aspect.

extraction of opinion phrases:
frequency-based tech.;
POS pattern;
dependency pattern.

FLDA [www'13].
train at product category level, not product level.
product aspect and user aspect.
perplexity.

implicit aspect.
e.g. "the camera is heavy"
instead of "the weight of the camera is high".

recommend "reviews" (from close users on social network).

## Future

In the discussion of GBSM,
it is not so useful in recsys but useful for link prediction.
Now many works already use social network to assist recsys.
How about the other direction?
i.e. use rating matrix to assist mining tasks on social networks.
can be positioned as using side information for 
link prediction, community detection, etc.
