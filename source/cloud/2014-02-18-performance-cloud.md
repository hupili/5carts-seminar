---
title: Bringing the Performance to the Cloud
author: Dongsu Han
institution: KAIST
date: 2014-04-18
link: 
tags: []
language: en
layout: review
mathjax: true
---

XIA?

typical:

   * multiple cores, 4-60.
   * multiple GE ports.

Tier:

   * web tier
   * cache tier/ server tier
   * storage tier

NSDI'14

key-value cache. very hot recent topic.

Facebook 5 caches: most < 100, almost all < 1K. sigmetric'12.

   * memcached (Facebook use): 1.5 M op/s.
   * RAMCloud (designed for reliability)
   * Masstree (multi-core KV): up to 23.5 M op/s.
   * current hardware, UDP packets: 77.8 packets/sec.
   * MICA: near limit.

## MICA (Cache)

cache: only cache, not store; can lose item.

traditional model: Concurrent Read/Write (CRCW)

   * any core can r/w any part of mem.
   * mem access contention is a problem.
   * Prior to MassTree: performance drop with more cores.
   **optimistic locking**.

MICA:

   * Exclusive R/W (EREW).

Request direction:

   * flow-based affinity: require HW modify.
   * object-based affinity: client support.
   client put partition ID to the packet header.
   * different cores on cache server listen on different port.
   redirect in NIC.

KV data structure:

   * circular log store.
   evict oldest entry.
   * lossy concurrent hash index.
   evict oldest entry.

## Web servers

more cores: performance (of connection accept) drop. 

for small files. 64 byte file via lighthttpd .45% in kernel, 34% TCP/IP.
(most time in kernel)

Overheads:

   1. lack of connection locality.
   2. VFS overhead: file descriptor, find lowest available integer.
   3. system call. software trap.
   4. inefficient memory allocation in packet processing.

MegaPipe [OSDI'12].
addresses 1-3.
Previous works re-use system TCP/IP stack.

User-level lib to mimic TCP/IP stack and epoll-like event system.

25x Linux, 5x REUSEPORT, 3x MegaPipe.

web replayer

SpecWeb2009 static file


