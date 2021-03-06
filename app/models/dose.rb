class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail_id, presence: true, uniqueness: { scope: :ingredient }
  validates :ingredient_id, presence: true

  belongs_to :cocktail
  belongs_to :ingredient
end
