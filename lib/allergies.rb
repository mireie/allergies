require ('pry')

class Allergies
  def initialize(score)
    @score = score
  end
  def find_allergies
    allergies = { 1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries", 16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats" }
    allergy_array=[]
    if @score === 1
      allergy_array.push(allergies.fetch(@score))
    else
      
    end

    return allergy_array
  end
end