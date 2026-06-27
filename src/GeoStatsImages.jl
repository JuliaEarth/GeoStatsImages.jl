# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

module GeoStatsImages

using GslibIO
using TableTransforms
using DataScienceTraits

export geostatsimage

datadir = joinpath(@__DIR__, "data")

"""
    geostatsimage(name)

Load image with given `name` from database.

Run [`GeoStatsImages.available()`](@ref) to
see the list of available images.
"""
function geostatsimage(name)
  if name ∉ keys(database())
    throw(ArgumentError("""
    image "$name" is not available.

    Please choose one of the following names:

    $(join(available(), "\n"))
    """))
  end

  geotable = GslibIO.load(joinpath(datadir, name * ".gslib"))

  iscategorical = startswith(first(names(geotable)), "code")

  if iscategorical
    geotable |> Replace(NaN => missing) |> Coerce(Categorical)
  else
    geotable
  end
end

"""
    GeoStatsImages.available()

Lists all available image names in the database.
"""
available() = sort(collect(keys(database())))

"""
    GeoStatsImages.database()

Returns a dictionary of all available images in the database.
"""
function database()
  id(fname) = first(splitext(basename(fname)))
  fnames = [joinpath(datadir, fname) for fname in readdir(datadir)]
  Dict(id(fname) => fname for fname in filter(endswith(".gslib"), fnames))
end

end
