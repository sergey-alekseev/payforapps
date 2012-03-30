class PoInfo < ActiveRecord::Base
  belongs_to :po_infoable, polymorphic: :true
  validates :po_infoable_id, :po_infoable_type, presence: true
  after_initialize :init
  attr_accessible :name, :address, :city, :state, :zipcode, :country, :phone, :fax, :email

  def init
    self.email ||= self.po_infoable.email
  end
end
