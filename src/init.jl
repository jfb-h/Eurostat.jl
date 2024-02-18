
# const EUROSTAT_TOC = "https://ec.europa.eu/eurostat/api/dissemination/catalogue/toc/txt?lang=en"

# _bootstrap_dtk() = let
    
# end

add_dataset(code::AbstractString, description::AbstractString, type::AbstractString) = let
	url = "https://ec.europa.eu/eurostat/api/dissemination/sdmx/2.1/data/$code/?format=SDMX-CSV&compressed=true"
	# TODO: this still prompts for user input; see https://github.com/tecosaur/DataToolkit.jl/issues/16
	DataToolkitBase.add(DataToolkit.Dataset, code, Dict{String, Any}("description" => description), url)
end
