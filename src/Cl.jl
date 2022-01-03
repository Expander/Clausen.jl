# returns (x, sign) with x in [0,pi]
function range_reduce(n::UInt64, x::Float64)
    sgn = 1.0

    if x < 0.0
        x = -x
        sgn = -1.0
    end

    if x >= 2.0*pi
        x = mod2pi(x)
    end

    if x > pi
        p0 = 6.28125
        p1 = 0.0019353071795864769253
        x = (p0 - x) + p1
        sgn = -sgn
    end

    if iseven(n)
        (x, sgn)
    else
        (x, 1.0)
    end
end

# Eq.(2.11)
function ncal(n::UInt64, x::Float64)
    0.0
end

function pcal(n::UInt64, x::Float64)
    0.0
end

"""
    cl6(x::Float64)::Float64

Returns the value of the Clausen function ``\\operatorname{Cl}_n(x)``
for integer `n > 1` and a real angle `x` of type `Float64`.  This
function is defined as

```math
\\operatorname{Cl}_n(x) &= \\Im[\\operatorname{Li}_n(e^{ix})] = \\sum_{k=1}^\\infty \\frac{\\sin(kx)}{k^n}, \\qquad n~\\text{even}, \\
\\operatorname{Cl}_n(x) &= \\Re[\\operatorname{Li}_n(e^{ix})] = \\sum_{k=1}^\\infty \\frac{\\cos(kx)}{k^n}, \\qquad n~\\text{odd}
```

The implementation follows the approach presented in [Jiming Wu,
Xiaoping Zhang, Dongjie Liu, "An efficient calculation of the Clausen
functions Cl_n(0)(n >= 2)"].

Author: Alexander Voigt

License: MIT

# Example
```julia
cl(10, 1.0)
```
"""
function cl(n::UInt64, x::Float64)::Float64
    if n < 2
        throw("cl(n,x) undefined for n < 2")
    end

    (x, sgn) = range_reduce(n, x)

    if iseven(n)
        if x == 0.0 || x == pi
            return 0.0
        end
    else
        if x == 0.0
            return 0.0 # @todo(alex): return zeta(x)
        end
    end

    # sum in Eq.(2.8), (2.13)
    sum = 0.0 # @todo(alex): implement sum

    # Eq.(2.8), (2.13)
    sgn*(-1)^fld(n + 1, 2.0)*x^(n - 1)/factorial(n - 1)*log(2*sin(x/2)) +
    (-1)^(fld(n, 2.0) + 1)/factorial(n - 2)*sum + pcal(n, x)
end
