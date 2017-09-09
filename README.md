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
solvers implemented therein.

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

### Continuous

#### WalkerLake
![WalkerLakePreview](src/data/WalkerLake.png)

#### WalkerLakeTruth
![WalkerLakeTruthPreview](src/data/WalkerLakeTruth.png)

#### StoneWall
![StoneWallPreview](src/data/StoneWall.png)

#### Herten
![HertenPreview](src/data/Herten.png)

#### Lena
![LenaPreview](src/data/Lena.png)

#### FlumeContinuous{01,02,...,13}
![FlumeContinuousPreview](src/data/FlumeContinuous.png)

#### StanfordV
![StanfordVPreview](src/data/StanfordV.png)

### Categorical

#### Strebelle
![StrebellePreview](src/data/Strebelle.png)

#### FlumeBinary{01,02,...,13}
![FlumeBinaryPreview](src/data/FlumeBinary.png)

#### WestCoastAfrica
![WestCoastAfricaPreview](src/data/WestCoastAfrica.png)

#### Flumy
![FlumyPreview](src/data/Flumy.png)

#### Fluvsim
![FluvsimPreview](src/data/Fluvsim.png)

Contributing
------------

Contributions are very welcome, as are feature requests and suggestions.

Please [open an issue](https://github.com/juliohm/GeoStatsImages.jl/issues) if you encounter any problems.

REFERENCES
----------

Gregoire, M.; Caers, J., 2014. Multiple-point Geostatistics: Stochastic Modeling with Training Images. [[WEBSITE](http://trainingimages.org)]

St. Anthony Falls Laboratory, University of Minnesota. [[WEBSITE](https://www.esci.umn.edu/orgs/seds/Sedi_Research.htm)]

Mao, S.; Journel, A., 1999. Generation of a reference petrophysical/seismic data set: the Stanford V reservoir. [[PAPER](http://pangea.stanford.edu/departments/ere/dropbox/scrf/documents/reports/12/SCRF1999_Report12/SCRF1999_shuguang/stanford4.ps.zip)]
