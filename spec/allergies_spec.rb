require("rspec")
require("allergies")
require("pry")

describe("#allergies") do
  it("returns eggs with an inputted score of 1") do
    score = Allergies.new(1)
    expect(score.find_allergies).to(eq(["eggs"]))
  end
  it("returns peanuts with an inputted score of 2") do
    score = Allergies.new(2)
    expect(score.find_allergies).to(eq(["peanuts"]))
  end
  it("returns eggs and peanuts with an inputted score of 3") do
    score = Allergies.new(3)
    expect(score.find_allergies).to(eq(["peanuts", "eggs"]))
  end
end
