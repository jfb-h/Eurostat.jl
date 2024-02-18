module Eurostat

using DataToolkit
using DataFrames
using CSV

include("init.jl")

const COLLECTION = read(joinpath(pkgdir(@__MODULE__), "Data.toml"), DataToolkit.DataCollection)

get_table(code::String) = read(COLLECTION, dataset("eurostat-table-$code"), DataFrame)
get_toc() = read(dataset(COLLECTION, "eurostat-toc-raw"), DataFrame)




end
