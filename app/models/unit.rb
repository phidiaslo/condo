class Unit < ActiveRecord::Base
  validates :property_name, :unit_type, :lot_no, :water_meter, presence: true

  def select_type
  	@unittype = Unittype.all.collect(&:name)
  end

  def select_property
  	@property = Property.all.collect(&:name)
  end

  def service_charge
    (Unittype.find_by(:name => "#{unit_type}").sqft)*Property.find_by(:name => "#{property_name}").sc_rate
  end

  def sinking_fund
  	service_charge*(Property.find_by(:name => "#{property_name}").sinking_rate)/100
  end
end
