GeoStatsImages.jl
=================

*Training images for geostastical simulation in Julia.*

[![][travis-img]][travis-url] [![][julia-pkg-img]][julia-pkg-url] [![][codecov-img]][codecov-url]

This package converts famous training images from the geostatistcs
literature to a standard format for quick experimentation in Julia.
It is part of the [GeoStats.jl](https://github.com/juliohm/GeoStats.jl)
framework and can be used in conjunction with multiple-point simulation
solvers.

**The author does not hold any copyright on the data. Please give credit to the sources in the table.**

Installation
------------

```julia
Pkg.add("GeoStatsImages")
```

Usage
-----

```julia
TI = training_image(identifier::AbstractString)
```
where `identifier` can be any of the strings listed with the command `GeoStatsImages.available()`

Preview
-------

| Identifier | Preview | Type | Data source |
| ---------- |:-------:| ---- | ----------- |
| WalkerLake | ![WalkerLakePreview](src/data/WalkerLake.png) | Continuous | [Mariethoz & Caers, 2014][TI-book-url] |
| WalkerLakeTruth | ![WalkerLakeTruthPreview](src/data/WalkerLakeTruth.png) | Continuous | [Mariethoz & Caers, 2014][TI-book-url] |
| StoneWall | ![StoneWallPreview](src/data/StoneWall.png) | Continuous | [Mariethoz & Caers 2014][TI-book-url] |
| Herten | ![HertenPreview](src/data/Herten.png) | Continuous | [Mariethoz & Caers 2014][TI-book-url] |
| Lena | ![LenaPreview](src/data/Lena.png) | Continuous | [Mariethoz & Caers 2014][TI-book-url] |
| StanfordV | ![StanfordVPreview](src/data/StanfordV.png) | Continuous | [Mao & Journel 2014][StanfordV-url] |
| Strebelle | ![StrebellePreview](src/data/Strebelle.png) | Categorical | [Strebelle 2002][SNESIM-url] |
| Ellipsoids | ![EllipsoidsPreview](src/data/Ellipsoids.png) | Categorical | [Mariethoz & Caers 2014][TI-book-url] |
| WestCoastAfrica | ![WestCoastAfricaPreview](src/data/WestCoastAfrica.png) | Categorical | [Mariethoz & Caers 2014][TI-book-url] |
| Flumy | ![FlumyPreview](src/data/Flumy.png) | Categorical | [Hoffimann et al 2017][IQSIM-url] |
| Fluvsim | ![FluvsimPreview](src/data/Fluvsim.png) | Categorical | [Mariethoz & Caers, 2014][TI-book-url] |
| Ketton | ![Ketton](src/data/Ketton.png) | Categorical | [Imperial College Pore-Scale Modelling Group][Imperial-college] |

### Collections

[St. Anthony Falls Laboratory](https://www.esci.umn.edu/orgs/seds/Sedi_Research.htm)

#### FlumeContinuous{01,02,...,13}
![FlumeContinuousPreview](src/data/FlumeContinuous.png)

#### FlumeBinary{01,02,...,13}
![FlumeBinaryPreview](src/data/FlumeBinary.png)

Contributing
------------

Contributions are very welcome, as are feature requests and suggestions.

If you have any questions, please contact our community on the [gitter channel](https://gitter.im/JuliaEarth/GeoStats.jl).

[TI-book-url]: http://trainingimages.org
[StanfordV-url]: http://pangea.stanford.edu/departments/ere/dropbox/scrf/documents/reports/12/SCRF1999_Report12/SCRF1999_shuguang/stanford4.ps.zip
[SNESIM-url]: https://link.springer.com/article/10.1023/A%3A1014009426274
[IQSIM-url]: http://www.sciencedirect.com/science/article/pii/S0098300417301139
[Imperial-college]: http://www.imperial.ac.uk/earth-science/research/research-groups/perm/research/pore-scale-modelling/micro-ct-images-and-networks

[travis-img]: https://travis-ci.org/juliohm/GeoStatsImages.jl.svg?branch=master
[travis-url]: https://travis-ci.org/juliohm/GeoStatsImages.jl

[julia-pkg-img]: http://pkg.julialang.org/badges/GeoStatsImages_0.7.svg
[julia-pkg-url]: http://pkg.julialang.org/?pkg=GeoStatsImages

[codecov-img]: https://codecov.io/gh/juliohm/GeoStatsImages.jl/branch/master/graph/badge.svg
[codecov-url]: https://codecov.io/gh/juliohm/GeoStatsImages.jl
