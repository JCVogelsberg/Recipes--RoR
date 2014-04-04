class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :name, :presence => true
  validates :stars, :presence => true


  def self.all_by_id
    @recipes = Recipe.all.order(:id)
  end


end
