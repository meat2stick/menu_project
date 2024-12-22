class Section < ApplicationRecord
  has_many :menu_section
  has_many :menus, through: :menu_section
  has_many :section_item
  has_many :items, through: :section_item
end
