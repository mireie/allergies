require("rspec")
require("allergies")
require("pry")

describe("#allergies") do
  it("returns eggs with an inputted score of 1") do
    score = Allergies.new(1)
    expect(score.find_allergies).to(eq(["eggs"]))
  end
end
