# Haskell Lazy Evaluation Bug

This repository demonstrates a subtle bug in a Haskell program that generates prime numbers. The bug stems from the interaction between lazy evaluation and infinite lists. The original `primes` function, while logically correct, can lead to non-termination or excessive resource consumption when attempting to take a finite number of primes.

The `bug.hs` file contains the buggy code. The `bugSolution.hs` file provides a corrected version that uses more efficient strategies for generating primes. 

## Bug Description
The `filter isPrime [3..]` expression in the original code creates an infinite list.  While `take 10` is applied, Haskell's lazy evaluation only calculates primes as needed.  However, `isPrime`'s performance degrades significantly as the numbers grow larger, leading to potentially long computation times or even a non-terminating program.

## Solution
The solution uses a more efficient prime generation algorithm that avoids unnecessary computations for large numbers.