class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates_presence_of :cocktail
  validates_presence_of :ingredient
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]

end
