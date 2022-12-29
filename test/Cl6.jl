@testset "cl6" begin
    data = open(readdlm, joinpath(@__DIR__, "data", "Cl6.txt"))

    for r in 1:size(data, 1)
        row      = data[r, :]
        x        = row[1]
        expected = row[2]

        @test ClausenFunctions.cl6(x) ≈ expected rtol=1e-14 atol=1e-14
        @test ClausenFunctions.cl6(-x) ≈ -expected rtol=1e-14 atol=1e-14
        @test ClausenFunctions.cl6(x - 2pi) ≈ expected rtol=1e-14 atol=1e-13
        @test ClausenFunctions.cl6(x + 2pi) ≈ expected rtol=1e-14 atol=1e-13

        @test ClausenFunctions.cl6(Float16(x)) ≈ Float16(expected) atol=30*eps(Float16) rtol=30*eps(Float16)
        @test ClausenFunctions.cl6(Float32(x)) ≈ Float32(expected) atol=30*eps(Float32) rtol=30*eps(Float32)
    end

    @test ClausenFunctions.cl6(0.0) == 0.0
    @test ClausenFunctions.cl6(pi) == 0.0
    @test ClausenFunctions.cl6(1//2) ≈ 0.49419627977618802 rtol=1e-14
end
