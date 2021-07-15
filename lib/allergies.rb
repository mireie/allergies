require ('pry')

class Allergies
  def initialize(score)
    @score = score
  end
  def find_allergies
    allergies = { 1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries", 16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats" }
    allergy_array=[]
    allergy_array.push(allergies.fetch(@score))
    # case @score
    # when 1
    # when 2
    #   allergy_array.push(allergies.fetch(@score))
    # else
    #   return "No known allergies"
    # end
    return allergy_array
  end
end