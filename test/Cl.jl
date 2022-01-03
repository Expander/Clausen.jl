@testset "cl" begin
    for n in 2:6
        data = open(readdlm, joinpath(@__DIR__, "data", "Cl$(n).txt"))

        for r in 1:size(data, 1)
            row      = data[r, :]
            x        = row[1]
            expected = row[2]
            sgn      = -(-1)^n

            @test is_equal(ClausenFunctions.cl(UInt64(n), x), sgn*ClausenFunctions.cl(UInt64(n), -x), 1e-14)
        end

    end
end
