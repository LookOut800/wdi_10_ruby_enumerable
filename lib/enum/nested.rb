require 'byebug'
# Don't modify the Person class
class Person
  attr_accessor :name, :age, :gender, :years_language_experience, :favorite_foods

  def initialize(name:, age:, gender:, years_language_experience:{}, favorite_foods:[])
    @name = name
    @age = age
    @gender = gender
    @years_language_experience = years_language_experience
    @favorite_foods = favorite_foods
  end
end


class People
  def initialize(people_array)
    @people = people_array
  end

  def ages_sum
    @people.inject(0) { |memo, hash| memo += hash.age }
  end

  def average_age
    @people.inject(0) { |memo, hash| memo += hash.age } / @people.map { |hash| hash}.count
  end

  def total_years_programming_experience_for_all_languages
    @people.map {|person| person.years_language_experience.values.reduce(:+) }.inject(:+)
  end


  def favorite_food_frequency
   @people.map {|person| person.favorite_foods }.flatten.each_with_object(Hash.new(0)) { |food, frequency| frequency[food] += 1 }
  end

  def total_combined_years_language_experience(language)
    @people.map {|person| person.years_language_experience[language] }.compact.inject(:+)
  end

  def person_with_most_experience_in_language(language)
  end

  private

  def people
    @people
  end

end
