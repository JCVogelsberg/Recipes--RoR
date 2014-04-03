class Recipe < ActiveRecord::Base
  validates :name, :presence => true
  validates :stars, :presence => true





  def self.all_by_id
    @recipes = Recipe.all.order(:id)
  end


end
