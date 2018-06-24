using GeoStatsImages
using Test

@testset "Basic checks" begin
  # all images loaded as arrays
  for identifier in GeoStatsImages.identifiers
    @test isa(training_image(identifier), AbstractArray)
  end

  # throws on non existing identifier
  @test_throws AssertionError training_image("NonExistingIdentifier")

  # identifiers are printed
  rd, wr = redirect_stdout()
  GeoStatsImages.available()
  output = readavailable(rd)
  @test !isempty(output)
end
