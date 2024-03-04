from sympy import *
import sympy as sp
n = sp.Symbol("n");p = sp.Symbol("p"); q = sp.Symbol("q")
expectation=summation(2*n*p**n*q**n*factorial(2*n)/factorial(n)**2/(2*n-1), (n, 1, oo))
expectation.args[1].args[0][0]
