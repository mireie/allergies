require ('pry')

class Allergies
  def initialize(score)
    @score = score
  end
  def find_allergies
    allergies = { 1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries", 16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats" }
    allergy_array=[]
    working_score = @score
    until working_score === 0
      case working_score
      when 2..3
        allergy_array.push(allergies.fetch(2))
        working_score -= 2
      when 1
        allergy_array.push(allergies.fetch(1))
        working_score -= 1
      else
        return "No known allergies"
      end
    end
    return allergy_array
  end
end