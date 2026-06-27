using GeoStatsImages
using GeoTables
using Test

@testset "Basic checks" begin
  # all images loaded as arrays
  for name in GeoStatsImages.available()
    @test geostatsimage(name) isa GeoTable
  end

  # throws on non existing identifier
  @test_throws ArgumentError geostatsimage("NonExisting")
end
