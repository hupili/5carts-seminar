---
title: An Information Extraction Approach to Next-Generation Speech Processing
author: Chin-Hui Lee
institution: Georgia Tech
date: 2013-08-05
link:
tags: []
language: en
layout: review
mathjax: true
---

Jim

a paper May 2013. IEEE Proceedings: overview and trend of this field.

ASR

ASAT

## Automatic Speech Recognition (ASR)

history

1970.
Speech science.
handcrafted rules.
local optimization.

mid 70's. 40 years of HMM, fast progress.
Slow down in the last few years.
DNN is only for feature extraction, does not change the whole story.
math formulation.
global optimization.
automatic learning from data.

2010, next paradigm shift.
Back to basics.
e.g. Speech science;
signal processing;
information extraction.

Super human performance (IBM 2000 challenge).

## State of the art ASR

Current:

   * Feature Extraction.
   * Acoustic matcher:
   Acoustic model (tens of millions of params);
   workd model;
   * Language matcher:
   Language model (hundred of millions of params).

Find the most likely sequence of words in a finite space representation.

Problem: single-equation, enough?

work well if a task follows some specified training protocols:

   * speaker
   * speaking env.
   * Acoustic and signal acquisition device.
   * domain knowledge.

How about non resource-rich languages?
(lack of data)

4 IBM researchers use paradigm from ASR to do machine translation.
-- current state-of-the-art.

## Shannon's Channel Decoding Paradigm

Input -- channel -- output -- decoder

maximize the posterior probability of observing this sequence.

   * Bayes decision theory.
   * Input is hidden (e.g. unobserved Markov chain).
   * Output is observed HM process
   * HMM

## HMM

Simultaneous modeling of temporal and spectral variations.
HMM is so far the only model to do this.

GMM

Baum's paper, started with an inequality.
James Baker, relate to HMM, what we use today.

Key advances in HMM:

   * detailed modeling: defy curse of dimensionality.
   MLE, EM, GMM, etc.
   * adaptive modeling: quick learning from new data
   * Discriminative modeling:
   instead of modeling distribution, estimate decision boundary.

## ASR Limitations

FSN: finiate state network.

Top-down fully and exact knowledge integration is not likely.

Performance degrades in adverse conditions.

   * e.g. from native speaker to telephone env, error increases by 10 times.
   * domain mismatch. medical and business language.
   * WSJ0, trigram (4%) - bigram (7%) - 0-gram (70%)

## Integrated Search

Spectral

spectrogram reading

Top-down.

Language model is too strong.
Go for information extraction first.

## Human-Based Speech Processing

HSR, 10-100 times less word erros.

   * Knowledge hierarchy

Learn from human. Needs bottom-up.

   * Reliable anchor detection.
   * From pattern matching to detecting information-bearing cues.
   * From fluent speech to spontaneous speech.

## Automatic Speech Attribute Transcription (ASAT)

Bottom up

Speech Analysis Ensemble -- Bank of attribute detectors.

Detection of place of articulation.

Attribute-specific parameterization.

**Phone Posteriograms**

## Applications

   * Another Visible Speech: landmarks
   * Lattice Rescoring.
   Penalize HMM scores.
   30% reduction of errors alone.
   * Suprasegmental Prosody and Duration.
   * Cross-language integration.
   LVCSR, ISCSLP2012

## Conclusion

   * 2004, knowledge-ignorant modeling
   * knowledge-rich modeling
   * information extraction: supplements pattern matching with signal processing.
   * audiovisual data mining.
   * language-univeral modeling.

## Q/A

bottom-up: there is error propagation.
**needs islands of reliability** at lower layers.

top-down: can not search the whole space, resulting in errors.

For spectrogram reading, human proceeds bottom-up.
As for human brains, we don't know experimental evidence.
