class Unittype < ActiveRecord::Base

  validates :name, :sqft, :property_name, presence: true

  def select_property
  	@property = Property.all.collect(&:name)
  end
end
