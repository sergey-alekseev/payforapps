class User < ActiveRecord::Base
  has_one :po_info, as: :po_infoable, dependent: :destroy
  accepts_nested_attributes_for :po_info
	validates :username, presence: true, uniqueness: true
	validates :email, uniqueness: { case_sensitive: false }
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  attr_accessible :po_info_attributes
end
