---
title: Towards an information theory for decentralized control
author: Anant Sahai
institution: UCB
date: 2013-06-21
link: http://www.eecs.berkeley.edu/~sahai/ 
tags: ["information theory", "communication theory", "control theory"]
language: en
layout: review
mathjax: true
---

## Philosophical Thoughts

Communication:

   * dict definitions. can not remember. "exchanging information"? 
   * Shannon's view: reduction of uncertainty. 
   
The unified view:

   * One illustrative example: bomb and banana behind a wall.
   * Communication: reduce uncertainty by talk. 
   * Control: reduce uncertainty by act.
   
Quote Shannon's sentence in the 1959:

   * Communication: deal with past; you have the knowledge; you can not change it.
   * Control: deal with the future; you don't have the knowledge (haven't happend yet); you can change (influence by adding control sequence) it.
   
## Results

Several control theory problems are found counterparts in information theory. Not vice versa. This is still open.
   
Decentralized control:

   * One controller case: plant --> observation --> control --> plant. 
   * Multiple controller: do not coordinate; influence plant simultaneously; get feedback from the plant; implicit communication.
   * **Network Coding** (NC) == decentralized LTI control. 
   
Transfer function:

   * Give one control state realization, one can find a transfer function. 
   * Give a transfer function, there are many state realization for it. 
   * NC: given a network --> find equivalent networks (in the sense of transfer function)?

Distributed LQG == MIMO:

   * MIMO: High SNR --> rank maximization; low SNR --> power maximization. 
   * DisLQG: fast dynamics; slow dynamics.
   
## Side note

From the Q/A, the cultural difference:

   * Control theory community: stopped early because of many bad properties, e.g. non-convex, infinite dimensional optimization, etc. 
   * Information theory community: OK can not solve the full problem; then try hard to find partial results; at least solve problems under some assumptions. 
   
> Take this section neutral. Not a word by word record from the speaker.