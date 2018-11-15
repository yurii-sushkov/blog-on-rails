class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	validates :name, presence: true
  def valid_attribute?(attribute_name)
	self.valid?
	self.error[attribute_name].blank?
  end
end
