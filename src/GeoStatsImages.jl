# ------------------------------------------------------------------
# Copyright (c) 2015, Júlio Hoffimann Mendes <juliohm@stanford.edu>
# Licensed under the ISC License. See LICENCE in the project root.
# ------------------------------------------------------------------

module GeoStatsImages

using DelimitedFiles: readdlm

export training_image

datadir = joinpath(dirname(@__FILE__),"data")
datafiles = filter(s -> occursin(r".*\.dat", s), readdir(datadir))

database = Dict()
for fname in datafiles
  push!(database, fname[1:end-4] => joinpath(datadir, fname))
end

identifiers = sort(collect(keys(database)))

function available()
  for identifier in identifiers
    println(identifier)
  end
end

function training_image(identifier::AbstractString)
  @assert identifier ∈ identifiers "training image not available"

  datafile = database[identifier]

  f = open(datafile)
  kind, nx, ny, nz = split(strip(readline(f)))
  nx = parse(Int, nx)
  ny = parse(Int, ny)
  nz = parse(Int, nz)
  data = readdlm(f)
  close(f)

  reshape(data, nx, ny, nz)
end

end # module
