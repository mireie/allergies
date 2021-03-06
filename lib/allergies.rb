require ("pry")

class Allergies
  def initialize(score)
    @score = score
  end

  def find_allergies
    allergy_list = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]
    allergy_array = []
    working_score = @score
    if @score > 255 || @score < 1
      return "Woah, you're allergic to some powerful stuff!"
    else
      until working_score === 0
        n = Math.log2(working_score).floor()
        allergy_array.push(allergy_list[n])
        working_score -= 2 ** n
      end
      return allergy_array
    end
  end
end