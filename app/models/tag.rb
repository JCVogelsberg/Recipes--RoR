class Tag < ActiveRecord::Base
  has_and_belongs_to_many :recipes

  validates :name, :presence => true


  def self.all_by_id
    @tags = Tag.all.order(:id)
  end

end
