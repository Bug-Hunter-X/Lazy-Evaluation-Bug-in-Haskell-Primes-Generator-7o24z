The solution utilizes a more efficient prime generation algorithm to prevent the non-termination or excessive resource usage issues.  Here's a corrected version:

```haskell
primes :: [Integer]
primes = sieve [2..] 

sieve :: [Integer] -> [Integer]
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
```

This implementation uses the Sieve of Eratosthenes algorithm, which is significantly more efficient for generating prime numbers than the original approach. It avoids the issues related to lazy evaluation and infinite lists that were present in the original code. The `sieve` function recursively filters out multiples of each prime found, producing the list of primes in a more efficient manner.