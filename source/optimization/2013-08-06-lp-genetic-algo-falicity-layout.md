---
title: An Integration of Linear Programing and Genetic Algorithms to Solve Facility Layout Problem
author: Sadan Kulturel-Konak
institution: Pennsylvania State University, Berks College
date: 2013-08-06
link: http://www.bk.psu.edu/FacultyStaff/sKulturel.htm
tags: ["layout", "linear programming", "genetic algorithm"]
language: en
layout: review
mathjax: true
---

Facility Layout Programing (FLP)

Motivation:

   * 25% of product cost is material handling cost.
   * 90% stop is due to material handling.

Settings:

   * Discrete
   * Continuous: 1) pre-defined shape; 2) unknown shape.

## Formulations of Unequal Area FLP

   * Given rec facility, department shapes and area requirement, material flows.
   * minimize material handling cost.

The area constraint is non-linear.
Tangential support: [Sherali et al, 2003]

Non-overlapping constraints:

   * Comment: combinatorial number of constraints (?)
   * relative position, 4 cases.
   z: indicate whether one block precedes another.

## Challenges

large number of bin decision variables.

Classical LP:
real life case only works to N=14.

Hybrid approaches, e.g. Tabu-search + LP.

## Algorithm

   * Use Genetic Algorithm (GA) to handle bin decision variables:
   the relative position of departments.
   * Use LP to check fitness.
   * Feedback LP to update the encoding of GA.

The location and shape constraints always yield a consistent assignment.

Uniform cossover and tournament selection:

   * Offspring gets all genes related to a department
   (x, y, area)
   from S or T with 0.5 prob.
   * Mutation: randomly mutated with prob 1/3N .

## Tools

   * GNU linear programming, <http://www.gnu.org/software/glpk/>

## Result

   * Better result if the facility has empty space
   * The tangential support approximation is effective.

## Related

   * Pub: Linear Programming Based Genetic Algorithm for the Unequal Area Facility Layout Problem,
   International Journal on Production Research.
   * Previous slides:
   A Hybrid Linear Programming and Genetic Algorithm Approach to the Unequal Area Facility Layout
   <https://www.lri.fr/~bentz/seminaires/konak_26_10_2011.pdf>
