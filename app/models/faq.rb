class Faq < ActiveRecord::Base

  def select_property
  	@property = Property.all.collect(&:name)
  end

end
