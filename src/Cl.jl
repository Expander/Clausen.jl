# (-1)^k B_{2k}/(2k)! where B_{2k} are the even Bernoulli numbers
# B(k) = 2*(-1)^(2*k + 1)*SpecialFunctions.zeta(2*k)/(2*pi)^(2*k)
const B = (
    -8.3333333333333333e-002,-1.3888888888888889e-003,-3.3068783068783069e-005,-8.2671957671957672e-007,
    -2.0876756987868099e-008,-5.2841901386874932e-010,-1.3382536530684679e-011,-3.3896802963225829e-013,
    -8.5860620562778446e-015,-2.1748686985580619e-016,-5.5090028283602295e-018,-1.3954464685812523e-019,
    -3.5347070396294675e-021,-8.9535174270375469e-023,-2.2679524523376831e-024,-5.7447906688722024e-026,
    -1.4551724756148649e-027,-3.6859949406653102e-029,-9.3367342570950447e-031,-2.3650224157006299e-032,
    -5.9906717624821343e-034,-1.5174548844682903e-035,-3.8437581254541882e-037,-9.7363530726466910e-039,
    -2.4662470442006810e-040,-6.2470767418207437e-042,-1.5824030244644914e-043,-4.0082736859489360e-045,
    -1.0153075855569556e-046,-2.5718041582418717e-048,-6.5144560352338149e-050,-1.6501309906896525e-051,
    -4.1798306285394759e-053,-1.0587634667702909e-054,-2.6818791912607707e-056,-6.7932793511074212e-058,
    -1.7207577616681405e-059,-4.3587303293488938e-061,-1.1040792903684667e-062,-2.7966655133781345e-064,
    -7.0840365016794702e-066,-1.7944074082892241e-067,-4.5452870636110961e-069,-1.1513346631982052e-070,
    -2.9163647710923614e-072,-7.3872382634973376e-074,-1.8712093117637953e-075,-4.7398285577617994e-077,
    -1.2006125993354507e-078,-3.0411872415142924e-080,-7.7034172747051063e-082,-1.9512983909098831e-083,
    -4.9426965651594615e-085,-1.2519996659171848e-086,-3.1713522017635155e-088,-8.0331289707353345e-090,
    -2.0348153391661466e-091,-5.1542474664474739e-093,-1.3055861352149467e-094,-3.3070883141750912e-096,
    -8.3769525600490913e-098,-2.1219068717497138e-099,-5.3748528956122803e-101,-1.3614661432172069e-102,
    -3.4486340279933990e-104,-8.7354920416383551e-106,-2.2127259833925497e-107,-5.6049003928372242e-109,
    -1.4197378549991788e-110,-3.5962379982587627e-112,-9.1093772660782319e-114,-2.3074322171091233e-115,
    -5.8447940852990020e-117,-1.4805036371705745e-118,-3.7501595226227197e-120,-9.4992650419929583e-122,
    -2.4061919444675199e-123,-6.0949553971026848e-125,-1.5438702377042471e-126,-3.9106689968592923e-128,
    -9.9058402898794298e-130,-2.5091786578563553e-131,-6.3558237896024598e-133,-1.6099489734616250e-134,
    -4.0780483898724622e-136,-1.0329817245315190e-137,-2.6165732752609202e-139,-6.6278575334086228e-141,
    -1.6788559257443673e-142,-4.2525917390343006e-144,-1.0771940713664573e-145,-2.7285644580839580e-147,
    -6.9115345134370137e-149,-1.7507121442157682e-150,-4.4346056667239196e-152,-1.1232987378487150e-153,
    -2.8453489425693971e-155,-7.2073530684151368e-157,-1.8256438595501418e-158,-4.6244099189746555e-160,
    -1.1713767165946985e-161,-2.9671318854112523e-163,-7.5158328663197353e-165,-1.9037827051837494e-166,
    -4.8223379271757316e-168,-1.2215124667619569e-169,-3.0941272241548313e-171,-7.8375158172837117e-173,
    -1.9852659485568249e-174,-5.0287373938151486e-176,-1.2737940624195893e-177,-3.2265580530233667e-179,
    -8.1729670255761088e-181,-2.0702367322529201e-182,-5.2439709032927841e-184,-1.3283133472690102e-185,
    -3.3646570148302941e-187,-8.5227757823275058e-189,-2.1588443254591854e-190,-5.4684165588767235e-192,
    -1.3851660959868732e-193,-3.5086667096656512e-195,-8.8875566007447618e-197,-2.2512443861893281e-198,
    -5.7024686469217722e-200,-1.4444521824735857e-201,-3.6588401210745441e-203,-9.2679502956336812e-205,
    -2.3475992347298971e-206,-5.9465383295169881e-208,-1.5062757553029781e-209,-3.8154410604763518e-211,
    -9.6646251091260105e-213,-2.4480781387902631e-214,-6.2010543667790175e-216,-1.5707454206813435e-217,
    -3.9787446306053875e-219,-1.0078277884588346e-220,-2.5528576108572180e-222,-6.4664638700600961e-224,
    -1.6379744332372530e-225,-4.1490377087871461e-227,-1.0509635290775169e-228,-2.6621217182765621e-230,
    -6.7432330873938832e-232,-1.7080808949773099e-233,-4.3266194508991167e-235,-1.0959455098376500e-236,
    -2.7760624066064009e-238,-7.0318482225589324e-240,-1.7811879627573501e-241,-4.5118018169014740e-243,
    -1.1428527511202687e-244,-2.8948798368101921e-246,-7.3328162891986569e-248,-1.8574240646335573e-249,
    -4.7049101188608530e-251,-1.1917676554344843e-252,-3.0187827368818927e-254,-7.6466660014982318e-256,
    -1.9369231254735576e-257,-4.9062835924299293e-259,-1.2427761521749539e-260,-3.1479887685209103e-262,
    -7.9739487029830971e-264,-2.0198248022238287e-265,-5.1162759927867278e-267,-1.2959678485750701e-268,
    -3.2827249095010017e-270,-8.3152393350706909e-272,-2.1062747292467202e-273,-5.3352562160805552e-275,
    -1.3514361871210552e-276,-3.4232278524048296e-278,-8.6711374470768819e-280,-2.1964247741580717e-281,
    -5.5636089474762561e-283,-1.4092786097034883e-284,-3.5697444204246398e-286,-9.0422682494513886e-288,
    -2.2904333046148606e-289,-5.8017353369352214e-291,-1.4695967287946349e-292,-3.7225320009595016e-294,
    -9.4292837120924187e-296,-2.3884654665215509e-297,-6.0500537039203004e-299,-1.5324965059522865e-300,
    -3.8818589977708149e-302,-9.8328637096699497e-304,-2.4906934741438690e-305,-6.3090002722625804e-307,
    -1.5980884379636898e-308,-4.0480053024903931e-310,-1.0253717215969654e-311,-2.5972969126396544e-313,
    -6.5790299364809836e-315,-1.6664877509565689e-316,-4.2212627863094242e-318,-1.0692583549355590e-319,
    -2.7084630535382438e-321,-6.8606170609008831e-323
)

# Binomial coefficents, [ binomial(n,k) for n=0:7, k=0:7 ]
const binomial_coeffs = (
    (1, 0,  0,  0,   0,   0,  0,  0),
    (1, 1,  0,  0,   0,   0,  0,  0),
    (1, 2,  1,  0,   0,   0,  0,  0),
    (1, 3,  3,  1,   0,   0,  0,  0),
    (1, 4,  6,  4,   1,   0,  0,  0),
    (1, 5, 10, 10,   5,   1,  0,  0),
    (1, 6, 15, 20,  15,   6,  1,  0),
    (1, 7, 21, 35,  35,  21,  7,  1)
)

# 1/n! for integer n = 0, 1, 2, ...
const inverse_factorials = (
    1.0, 1.0, 1/2, 1/6, 1/24, 1/120, 1/720, 1/5040, 1/40320
)

# zeta(n) for n = 2,...,9
const zetas = (
    1.6449340668482264, 1.2020569031595943, 1.0823232337111382,
    1.0369277551433699, 1.0173430619844491, 1.0083492773819228,
    1.0040773561979443, 1.0020083928260822
)

# returns binomial(n,k) using pre-computed table
function binomial_coeff(n::Integer, k::Integer)
    binomial_coeffs[n + 1][k + 1]
end

# returns 1/n!
function inverse_factorial(n::Integer)
    inverse_factorials[n + 1]
end

# returns zeta(n)
function zeta(n::Integer)
    zetas[n - 1]
end

# returns P_n(x)
function pcal(n::Integer, x::Float64)
    sum = zero(x)
    x2 = x*x
    fl = (n - 1)÷2

    for i in 3:2:n
        sgn = iseven(fl + (i - 1)÷2) ? 1.0 : -1.0
        sum = x2*sum + sgn*zeta(i)*inverse_factorial(n - i)
    end

    if iseven(n)
        sum *= x
    end

    sum
end

# returns N_n(x) from Eq.(2.11)
function ncal(n::Integer, x::Float64)
    sum = zero(x)
    xn1 = x^(n + 1)
    x2 = x*x
    xn = xn1*x2 # x^(n + 3)

    for k in one(n):length(B)
        old_sum = sum
        sum += B[k]*xn/(2*k + n + 1)
        sum == old_sum && break
        xn *= x2
    end

    (xn1/(n + 1) + sum)/(n + 1)
end

# returns sum in Eq.(2.13), n > 1
function nsum(n::Integer, x::Float64)
    sum = zero(x)
    xn = one(x)

    for i in zero(n):(n - 3)
        sum += binomial_coeff(n - 2, i)*xn*ncal(n - 2 - i, x)
        xn *= -x
    end

    sum + xn*ncal(0, x)
end

# returns Cl(n,x) using the naive series expansion
function cl_series(n::Integer, x::Float64)
    if iseven(n)
        si_series(n, x)
    else
        co_series(n, x)
    end
end

"""
    cl(n, z)

Returns the value of the Clausen function ``\\operatorname{Cl}_n(z)``
for all integers ``n\\in\\mathbb{Z}`` and arguments ``z`` of type
`Real` or `Complex`.  For complex ``z\\in\\mathbb{C}`` this function
is defined as
```math
\\begin{aligned}
\\operatorname{Cl}_n(z) &= \\frac{i}{2}\\left[\\operatorname{Li}_n(e^{-iz}) - \\operatorname{Li}_n(e^{iz})\\right], \\qquad \\text{for}~n~\\text{even}, \\\\
\\operatorname{Cl}_n(z) &= \\frac{1}{2}\\left[\\operatorname{Li}_n(e^{-iz}) + \\operatorname{Li}_n(e^{iz})\\right], \\qquad \\text{for}~n~\\text{odd}.
\\end{aligned}
```
For real ``z\\in\\mathbb{R}`` the function simplifies to
```math
\\begin{aligned}
\\operatorname{Cl}_n(z) &= \\Im[\\operatorname{Li}_n(e^{iz})] = \\sum_{k=1}^\\infty \\frac{\\sin(kz)}{k^n}, \\qquad \\text{for even}~n>0, \\\\
\\operatorname{Cl}_n(z) &= \\Re[\\operatorname{Li}_n(e^{iz})] = \\sum_{k=1}^\\infty \\frac{\\cos(kz)}{k^n}, \\qquad \\text{for odd}~n>0.
\\end{aligned}
```
Note: ``\\operatorname{Cl}_1(z)`` is not defined for ``z=2k\\pi`` with
``k\\in\\mathbb{Z}``.

For ``z`` of type `Float16`, `Float32` or `Float64` the implementation
follows the approach presented in [Jiming Wu, Xiaoping Zhang, Dongjie
Liu, "An efficient calculation of the Clausen functions Cl_n(θ)(n >=
2)", Bit Numer Math 50, 193-206 (2010)
[https://doi.org/10.1007/s10543-009-0246-8](https://doi.org/10.1007/s10543-009-0246-8)].

Author: Alexander Voigt

License: MIT

# Example
```jldoctest; setup = :(using ClausenFunctions), output = false
julia> cl(10, 1.0)
0.8423605391686301

julia> cl(10, big"1")
0.8423605391686302305168624869816554653186479602725762955247227248477087749849797

julia> cl(10, 1.0 + 1.0im)
1.301796548970136 + 0.6333106255561783im

julia> cl(10, big"1" + 1im)
1.301796548970136401486390838171927382622047488046695826621336318796926878116022 + 0.6333106255561785282041229828047700199791464296534659278461150656661132141323808im
```
"""
cl

cl(n::Integer, x::Real) = _cl(n, float(x))

_cl(n::Integer, x::Float16) = oftype(x, _cl(n, Float32(x)))

_cl(n::Integer, x::Float32) = oftype(x, _cl(n, Float64(x)))

function _cl(n::Integer, x::Float64)::Float64
    n < 1  && return invoke(_cl, Tuple{Integer, Real}, n, x)
    n == 1 && return cl1(x)
    n == 2 && return cl2(x)
    n == 3 && return cl3(x)
    n == 4 && return cl4(x)
    n == 5 && return cl5(x)
    n == 6 && return cl6(x)

    (x, sgn) = range_reduce(n, x)

    if iseven(n) && iszero(x)
        x
    elseif iseven(n) && x == convert(Float64, pi)
        zero(x)
    elseif n < 10
        sign1 = iseven((n + 1)÷2) ? 1.0 : -1.0;

        # first line in Eq.(2.13)
        term1 = iszero(x) ?
                zero(x) :
                sign1*x^(n - 1)*inverse_factorial(n - 1)*log(2*sin(x/2))

        sign2 = iseven(n÷2) ? 1.0 : -1.0

        # second line in Eq.(2.13)
        term2 = pcal(n, x) - sign2*inverse_factorial(n - 2)*nsum(n, x)

        # Eq.(2.13)
        sgn*(term1 + term2)
    else # n >= 10
        sgn*cl_series(n, x)
    end
end

function _cl(n::Integer, x::Real)
    if iseven(n)
        imag(PolyLog.li(n, cis(x)))
    else
        real(PolyLog.li(n, cis(x)))
    end
end

function cl(n::Integer, z::Complex)
    if iseven(n)
        if iszero(z)
            z
        else
            eiz = cis(z)
            (PolyLog.li(n, inv(eiz)) - PolyLog.li(n, eiz))*im/2
        end
    else
        eiz = cis(z)
        (PolyLog.li(n, inv(eiz)) + PolyLog.li(n, eiz))/2
    end
end
