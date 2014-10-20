class Bulletin < ActiveRecord::Base
  validates :post_to, :subject_title, :content, presence: true

  def select_property
  	@property = Property.all.collect(&:name)
  end
	
end
