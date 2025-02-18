using GeoStatsImages
using GeoTables
using Test

@testset "Basic checks" begin
  # utility functions
  @test GeoStatsImages.isdata("foo.gslib")
  @test !GeoStatsImages.isdata("foo.csv")
  @test GeoStatsImages.id("foo.gslib") == "foo"

  # all images loaded as arrays
  for id in GeoStatsImages.available()
    @test geostatsimage(id) isa GeoTable
  end

  # throws on non existing identifier
  @test_throws AssertionError geostatsimage("NonExistingIdentifier")
end
