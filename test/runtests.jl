using GeoStatsImages
using Base.Test

@testset "Basic checks" begin
  # all available images loaded as arrays
  for identifier in GeoStatsImages.available
    @test isa(training_image(identifier), AbstractArray)
  end

  # throws on non existing identifier
  @test_throws AssertionError training_image("NonExistingIdentifier")
end
