---
title: Big Data Workshop
author: Author
institution: CUHK
date: 2014-04-22
link: http://www.cintec.cuhk.edu.hk/2014BDWorkshop/programd.html
tags: []
language: en
layout: review
mathjax: true
---

http://www.cintec.cuhk.edu.hk/2014BDWorkshop/programd.html

## Mining Human Experiences from the Web

```
Sung-Hyon Myaeng 
Professor,  Department of Computer Science, 
Korea Advanced Institute of Science and Technology (KAIST) 
Talk title: Mining Human Experiences from the Web
```

http://ir.kaist.ac.kr/member/professor/

Experience mining from blogs.

One motivation: ask your friend for a problem;
they may have met it and solved it.

Experience: something have been done, not to be done.


## Building User Knowledge Graph Based on Human Behavioral Data

```
Xing Xie 
Senior Researcher,  Microsoft Research Asia 
Talk title: Building User Knowledge Graph Based on Human Behavioral Data
```

User oriented knowledge graph.
Ego-network by merging multiple platforms.
MS's own data, e.g. Skype;
Public data from Facebook, Twitter, Weibo;
...

Try to link users from different networks:
structural; profile; self-disclosure.

LifeSpec project:
Get data from different social networks.
Jiepang, Weibo, Douban, Dianping.
1.4 million unique users;
53 million footprints (check-in, movie, ...);
3 million social links.

self-disclosure:

   * "Cross-domain" posting.
   * Profile containing links of other social networks.
   * Able to link 1.4 million users.

User linking and graph privacy:

   * Anonymized Graph: target.
   * Auxiliary graph.
   * De-anonymized social graph.
   * Approach 1: measure node similarity.
   Recursive definition using neighbour's similarity.
   * Approach 2: other side information, 
   e.g. node-level attribute, communication.

Location prediction.
User check-ins.
Markov Model.

## Knowledge Graph

```
Seung-won Hwang 
Associate Professor,	Department of Computer Science and Engineering, POSTECH 
Talk title: Knowledge Graph``
```

Naver: http://www.naver.com/

link social and knowledge graph.

typo fixing

multi-language linking, --> translation.

mentioning graph.

motivated by the S&P'09 paper.
Link Twitter and Flickr with 12% error rate.
This one?
"De-anonymizing Social Networks Arvind Narayanan, Vitaly Shmatikov (University of Texas, Austin)"
Purely graph-based.

Transitivity. 
positive/ negative evidence. 

## Emergent Rumor Detection and Credibility Ranking on Social Media

```
Kam-Fai Wong
Professor,  Department of Systems Engineering and Engineering Management, 
The Chinese University of Hong Kong 
Talk title: Emergent Rumor Detection and Credibility Ranking on Social Media
```

Features: content, user credibility, opinion.

classical method for uncertainty: epistemic, hypothetical.

from MSRA:

   * Time-series.
   news usually goes up and then down.
   Rumor is usually periodic.
   * Rumor usually comes from low degree nodes to high degree nodes.

## Social influence analysis in large-scale networks

```
Jie Tang 
Associate Professor,    Department of Computer Science and Technology, Tsinghua University 
Talk title: Social influence analysis in large-scale networks
```

social influence in game social networks and MOOC.

DNF. QQ Speed.
Task: predict free users -> paying users.

Structural hole: different concept from centrality.
e.g. nodes connecting different communities.

Co-playing network.

number of paying neighbours is positively related with paying probability.
Clustering coefficient.
Assortivity.

Structure of paying neighbours.
Jon Kleinberg, PNAS, 109.

   * If the paying neighbours are connected,
   it's less likely for one to pay.

Factorization machines.

Online test.

XuetangX.com from THU.
based on Open EdX.


## Text summarization in the big data era

```
Xiaojun Wan 
Associate Professor,    Institute of Computer Science and Technology, Peking University 
Talk title: Text summarization in the big data era
```

benchmark tasks: DUC, TAC, NTCIR, TREC

some applications:

   * Related work generation
   * slides generation
   * Timeline summarization
   * Cross-language summarization

multi-document summarization.


## Detecting and patching web application vulnerabilities

```
Fang Yu
Assistant Professor, Department of Management Information Systems, 
National Chengchi University 
Talk title: Detecting and patching web application vulnerabilities
```

why are web apps error prone:
extensive string manipulation.

two of top three OWASP list.

http://xkcd.com/327/

Patcher.

An automata from input to output.
Drive user input, check whether output has empty intersection with attack patterns.

multi-input checker.
multi-track automata.
Forward reachability check.

## Program Analysis of JavaScript Web Applications

```
Sukyoung Ryu
Assistant Professor, Computer Science Department, 
Korea Advanced Institute of Science and Technology (KAIST)
Talk title: Program Analysis of JavaScript Web Applications
```

http://plrg.kaist.ac.kr/ryu

Tizen platform.

problems.
no module system;
no user-defined types;
"any type can be converted to any other reasonable type"

"A scripting language should never throw an exception" (Rob Pike, Google)

code generation at run-time.

no clear definitions of "errors" and "bugs".
e.g. function can take arbitrary number of arguments.

SAFE: Scalable Analysis Framework for ECMAScript

over approximation.

WebKit's SunSpider benchmarks.
https://www.webkit.org/perf/sunspider/sunspider.html

"==" v.s. "===" bug in Wikipedia language selection.

sohu.com, double-quote v.s. single-quote.
(no response yet)

WebIDL.
http://www.w3.org/TR/WebIDL/  .
Detect bug in API specification.

Require knowledge with HTML.
e.g. get a JS object from DOM.

TypeScript.
A superset of JS.
http://www.typescriptlang.org/  .
Can be used as specification language.

Detect bug in ExtJS.

jQuery.
Start with an empty object.
Add features gradually in a loop.
