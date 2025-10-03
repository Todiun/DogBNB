class Dog < ApplicationRecord
  belongs_to :city
  has_many :strolls
  has_many :dogsitter, through: :strolls
end
