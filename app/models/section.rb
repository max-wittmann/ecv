class Section < ActiveRecord::Base
  #has_many :section_items, dependent => :destroy
  has_many :section_items
end
