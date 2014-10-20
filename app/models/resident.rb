class Resident < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  GENDER_SELECT = ['Male', 'Female']
  TYPE_SELECT = ['Owner', 'Tenant']
  STATUS_SELECT = ['Single', 'Single Parent', 'Married', 'Divorced', 'Widowed']

  def select_property
  	@property = Property.all.collect(&:name)
  end
end
