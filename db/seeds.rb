class Seed 

  def self.begin
    seed = Seed.new
    seed.generate_animals 
  end

  def generate_animals
    50.times do |i|
      @cat_or_dog = ['Cat', 'Dog']
      @species = @cat_or_dog.sample
      if @species == 'Cat' 
        animal = Animal.create!(
          species: @species,
          name: Faker::TvShows::TwinPeaks.character, 
          breed: Faker::Books::Dune.title,
          age: Faker::Number.between(from: 1, to: 100)
        )
      else 
        animal = Animal.create!(
          species: @species,
          name: Faker::TvShows::HeyArnold.character,
          breed: Faker::Games::Pokemon.name,
          age: Faker::Number.between(from: 1, to: 100)
        )
      end
      
      p "Animal #{i}: #{animal.name} is a #{animal.species} and they are a #{animal.age} years old #{animal.breed}"
    end
  end
end

Seed.begin 