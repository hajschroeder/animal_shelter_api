FactoryBot.define do
  factory(:animal) do
    species {'Cat'}
    name {Faker::TvShows::TwinPeaks.character}
    breed {Faker::Books::Dune.title}
    age {Faker::Number.between(from: 1, to: 100)}
  end
end
