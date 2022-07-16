class Animal < ApplicationRecord

  validates :species, presence: true
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true
end
