class SectionItem < ActiveRecord::Base
  validates :sectionid, presence: true
  validates :title, presence: true

  belongs_to :section;
end
