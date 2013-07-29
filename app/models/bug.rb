class Bug < ActiveRecord::Base
  belongs_to :product
  attr_accessible :description, :priority, :reporter, :status, :title
  validates :title, :description, :priority, :status, :presence => true
  validates :description, :presence => true, :length => { :minimum => 6 }
end
