using GeoStatsImages
using GeoStatsBase
using Test

@testset "Basic checks" begin
  # all images loaded as arrays
  for id in GeoStatsImages.available()
    @test isa(geostatsimage(id), RegularGridData)
  end

  # throws on non existing identifier
  @test_throws AssertionError geostatsimage("NonExistingIdentifier")
end
