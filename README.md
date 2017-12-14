GeoStatsImages.jl
=================

*Training images for geostastical simulation in Julia.*

[![Build Status](https://travis-ci.org/juliohm/GeoStatsImages.jl.svg?branch=master)](https://travis-ci.org/juliohm/GeoStatsImages.jl)
[![GeoStatsImages](http://pkg.julialang.org/badges/GeoStatsImages_0.5.svg)](http://pkg.julialang.org/?pkg=GeoStatsImages)
[![Coverage Status](https://codecov.io/gh/juliohm/GeoStatsImages.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/juliohm/GeoStatsImages.jl)

This package converts famous training images from the geostatistcs
literature to a standard format for quick experimentation in Julia.
It is part of the [GeoStats.jl](https://github.com/juliohm/GeoStats.jl)
framework and can be used in conjunction with multiple-point simulation
solvers.

**The author does not hold any copyright on the data. Please give credit to the sources at the bottom of this page.**

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
| WestCoastAfrica | ![WestCoastAfricaPreview](src/data/WestCoastAfrica.png) | Categorical | [Mariethoz & Caers 2014][TI-book-url] |
| Flumy | ![FlumyPreview](src/data/Flumy.png) | Categorical | None |
| Fluvsim | ![FluvsimPreview](src/data/Fluvsim.png) | Categorical | ? |

### Collections

[St. Anthony Falls Laboratory](https://www.esci.umn.edu/orgs/seds/Sedi_Research.htm)

#### FlumeContinuous{01,02,...,13}
![FlumeContinuousPreview](src/data/FlumeContinuous.png)

#### FlumeBinary{01,02,...,13}
![FlumeBinaryPreview](src/data/FlumeBinary.png)

Contributing
------------

Contributions are very welcome, as are feature requests and suggestions.

Please [open an issue](https://github.com/juliohm/GeoStatsImages.jl/issues) if you encounter any problems.

[TI-book-url]: http://trainingimages.org
[StanfordV-url]: http://pangea.stanford.edu/departments/ere/dropbox/scrf/documents/reports/12/SCRF1999_Report12/SCRF1999_shuguang/stanford4.ps.zip
[SNESIM-url]: https://link.springer.com/article/10.1023/A%3A1014009426274
