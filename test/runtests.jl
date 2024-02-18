using Eurostat
using Test
using DataFrames

@testset "Eurostat.jl" begin

    @testset "toc" begin
        toc = Eurostat.get_toc()
        @test toc isa DataFrame
        @test size(toc, 1) > 0
    end
    
end
