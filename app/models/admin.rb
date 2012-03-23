class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  #:registerable, :recoverable, :rememberable,
  devise :database_authenticatable, :trackable, :validatable, :timeoutable, :lockable

  # Setup accessible (or protected) attributes for your model
  # , :remember_me
  attr_accessible :email, :password, :password_confirmation
end
