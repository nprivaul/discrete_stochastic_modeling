from sympy import *
import sympy as sp
k = sp.Symbol("k");p = sp.Symbol("p"); q = sp.Symbol("q")
prob=summation(p**k*q**k*factorial(2*k)/factorial(k)**2/(2*k-1), (k, 1, oo))
simplify(prob.args[0][0])
