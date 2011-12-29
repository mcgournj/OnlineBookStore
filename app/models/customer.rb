class Customer < ActiveRecord::Base


  
  attr_accessible :firstname, :lastname, :email, :phone, :password, :address_id

  validates_presence_of :firstname, :lastname, :email, :phone, :password, :address_id

  has_one :address
  has_many :order



end
