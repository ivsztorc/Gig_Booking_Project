class User < ActiveRecord::Base
  has_many :bookings
  has_many :timetables, :through => :bookings
    include Gravtastic
  gravtastic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
  def role?(role_to_compare_to)
    role_to_compare_to.to_s == self.role.to_s
  end


end




