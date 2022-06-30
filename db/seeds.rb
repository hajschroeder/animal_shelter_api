class Seed 

  def self.begin
    seed = Seed.new
    seed.generate_animals 
  end

  def generate_animals
    50.times do |i|
      animal = Animal.create!(
        name: Faker::TvShows::TwinPeaks.character, 
        breed: Faker::Books::Dune.title,
        age: Faker::Number.between(from: 1, to: 100)
      )
      
      p "Animal #{i}: #{animal.name} is a #{animal.breed} and they are #{animal.age} years old"
    end
  end
end

Seed.begin 