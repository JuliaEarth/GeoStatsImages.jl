[![Build Status](https://travis-ci.org/juliohm/TrainingImages.jl.png)](https://travis-ci.org/juliohm/TrainingImages.jl)
[![TrainingImages](http://pkg.julialang.org/badges/TrainingImages_nightly.svg)](http://pkg.julialang.org/?pkg=TrainingImages&ver=nightly)

TrainingImages.jl
=================

Training images for geostastical simulation.

Installation
------------

```julia
Pkg.add("TrainingImages")
```

Usage
-----

```julia
TI = training_image(identifier::String)
```
where `identifier` can be any of the strings listed with the command `TrainingImages.available`

Preview
-------

### Continuous

#### WalkerLake
![WalkerLakePreview](src/data/WalkerLake.png)

#### StoneWall
![StoneWallPreview](src/data/StoneWall.png)

#### Herten
![HertenPreview](src/data/Herten.png)

### Categorical

#### Strebelle
![StrebellePreview](src/data/Strebelle.png)

#### WestCoastAfrica
![WestCoastAfricaPreview](src/data/WestCoastAfrica.png)

REFERENCES
----------

Gregoire, M.; Caers, J., 2014. Multiple-point Geostatistics: Stochastic Modeling with Training Images. [[WEBSITE](http://trainingimages.org)]
