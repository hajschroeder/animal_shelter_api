class Animal < ApplicationRecord

  validates :species, :name, :breed, :age, presence: :true
end
