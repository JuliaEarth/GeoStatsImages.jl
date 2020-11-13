# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

module GeoStatsImages

using FileIO
using GslibIO

export geostatsimage

datadir = joinpath(@__DIR__, "data")
fnames  = [joinpath(datadir, fname) for fname in readdir(datadir)]

isdata(fname) = occursin(r".*\.gslib", fname)
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
  load(joinpath(datadir,id*".gslib"))
end

end # module
