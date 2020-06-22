# ------------------------------------------------------------------
# Licensed under the ISC License. See LICENCE in the project root.
# ------------------------------------------------------------------

module GeoStatsImages

using DelimitedFiles: readdlm

export geostatsimage

datadir = joinpath(@__DIR__, "data")
fnames  = readdir(datadir, join=true)

isdata(fname) = occursin(r".*\.dat", fname)
id(fname) = splitext(basename(fname))[1]

db = Dict(id(fname) => fname for fname in filter(isdata, fnames))

"""
    available()

List of identifiers for all available images.
"""
available() = sort(collect(keys(db)))

"""
    geostatsimage(id)

Load image from geostatistics literature based on
a given identifier `id`. For a list of available
identifiers, run `GeoStatsImages.available()`.
"""
function geostatsimage(id)
  @assert id ∈ keys(db) "image not available"

  open(db[id]) do f
    kind, nx, ny, nz = split(strip(readline(f)))
    nx = parse(Int, nx)
    ny = parse(Int, ny)
    nz = parse(Int, nz)
    data = readdlm(f)

    reshape(data, nx, ny, nz)
  end
end

end # module
