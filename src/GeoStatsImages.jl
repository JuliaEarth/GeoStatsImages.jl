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

available() = sort(collect(keys(db)))

function geostatsimage(id)
  @assert id ∈ keys(db) "image not available"

  f = open(db[id])
  kind, nx, ny, nz = split(strip(readline(f)))
  nx = parse(Int, nx)
  ny = parse(Int, ny)
  nz = parse(Int, nz)
  data = readdlm(f)
  close(f)

  reshape(data, nx, ny, nz)
end

end # module
