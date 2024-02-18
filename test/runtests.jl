using Eurostat
using Test
using DataToolkit

@testset "Eurostat.jl" begin

    @testset "eurostat-toc" begin
        toc = d"eurostat-toc-raw"
        @test toc isa DataFrame
        @test size(toc, 1) > 0
        for type in ["folder", "dataset", "table"]
            @test get_toc(type) isa DataFrame
        end
    end

    
end
