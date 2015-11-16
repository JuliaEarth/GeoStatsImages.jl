GeoStatsImages.jl
=================

Training images for geostastical simulation.

[![Build Status](https://travis-ci.org/juliohm/GeoStatsImages.jl.svg?branch=master)](https://travis-ci.org/juliohm/GeoStatsImages.jl)
[![GeoStatsImages](http://pkg.julialang.org/badges/GeoStatsImages_0.4.svg)](http://pkg.julialang.org/?pkg=GeoStatsImages&ver=0.4)

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
where `identifier` can be any of the strings listed with the command `GeoStatsImages.available`

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

### Categorical

#### Strebelle
![StrebellePreview](src/data/Strebelle.png)

#### FlumeBinary{01,02,...,13}
![FlumeBinaryPreview](src/data/FlumeBinary.png)

#### WestCoastAfrica
![WestCoastAfricaPreview](src/data/WestCoastAfrica.png)

REFERENCES
----------

Gregoire, M.; Caers, J., 2014. Multiple-point Geostatistics: Stochastic Modeling with Training Images. [[WEBSITE](http://trainingimages.org)]

St. Anthony Falls Laboratory, University of Minnesota. [[WEBSITE](https://www.esci.umn.edu/orgs/seds/Sedi_Research.htm)]
