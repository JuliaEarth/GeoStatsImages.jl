## Copyright (c) 2015, Júlio Hoffimann Mendes <juliohm@stanford.edu>
##
## Permission to use, copy, modify, and/or distribute this software for any
## purpose with or without fee is hereby granted, provided that the above
## copyright notice and this permission notice appear in all copies.
##
## THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
## WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
## MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
## ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
## WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
## ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
## OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

datadir = joinpath(Pkg.dir(),"TrainingImages","src","data")

database = Dict("Strebelle"       => joinpath(datadir,"Strebelle.dat"),
                "WalkerLake"      => joinpath(datadir,"WalkerLake.dat"),
                "StoneWall"       => joinpath(datadir,"StoneWall.dat"),
                "Herten"          => joinpath(datadir,"Herten.dat"),
                "WestCoastAfrica" => joinpath(datadir,"WestCoastAfrica.dat"))

available = collect(keys(database))

function training_image(identifier::String)
  @assert identifier ∈ available "training image not available"

  datafile = database[identifier]

  f = open(datafile)
  kind, nx, ny, nz = split(strip(readline(f)))
  nx = parse(Int, nx)
  ny = parse(Int, ny)
  nz = parse(Int, nz)
  close(f)

  T = (kind == "categorical") ? Int : Float64

  data = readdlm(datafile, ' ', T, skipstart=1)

  reshape(data, nx, ny, nz)
end
