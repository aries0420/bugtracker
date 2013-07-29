class Product < ActiveRecord::Base
  attr_accessible :description, :title

  validates :title, :presence => true

  has_many :bugs, :dependent => :delete_all
end
