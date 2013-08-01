---
title: Windows Azure Overview
author: Edwin Cheung
institution: Microsoft
date: 2013-08-01
link: http://sepc57.se.cuhk.edu.hk/default.aspx?contentID=20&date=08/01/2013
tags: ["windows", "azure"]
language: en
layout: review
mathjax: true
---

## Introduction

cloud: approach, internet scale, connect a variety of devices.

   * IaaS: host
   * PaaS: build.
   Don't care about CPU, memory, network.
   When Azure is first introduced, it is positioned as PaaS.
   * SaaS: consume
   e.g. MS office. (?)

Azure:

   * also run Linux on it.
   * SLA. redundancy across data centers.

three regions of data center.
Shanghai and Japan will have next data centers.

Work with ChinaCache and Akamai.

Pay for what you use.

manage.windowsazure.com

## Virtual machines

windows, linux. VPN

Asia centers: Honkong, Singapore.

VHD (Virtual Hard Disk).
standard open spec format.
e.g. can download and open in Virtualbox.

Persistent drive.
3 replications.
geo-replications.

## Websites

ASP.Net, PHP, node.js, etc.

Pre installed applications e.g. wordpress.

Can put on reserved instance.
Pay by hour.

## Cloud services

"infinite scalability"

MS Visual Studio.

Create multi-tier applications.
e.g. web role + worker role.
Emulator on desktop.

VS create the skeleton for you.

A guestbook app, will be in the lab session.

## Mobile services

## SQL DB

SQL, provided as PaaS.

Oracle, provided as IaaS.

## Blob storage

scalable file system

## Blob storage

scalable file system.
REST API.

Distributed cache.
transparent to app.

## Identity

backed up by windows active directory.

## Service bus

Secure messaging services.

loosely coupled solutions.

## Big Data

Azure marketplace: 3rd party data source.

Social analytics.

Data explorer.
recommend new data sets based on your history.

SQL server Data quality service: data cleaning.

SQL server integration: transformation.

Growing trends:
device, social network, ubiquitous connection, sensor network.

MS is working with Shanghai gov on smart city.

End-to-end approach.

## Remarks

The VM and websites are now special.
Other service providers may give more choices.

The cloud service is too binded with windows and visual studio.

