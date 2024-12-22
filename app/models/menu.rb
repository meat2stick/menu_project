class Menu < ApplicationRecord
  has_many :menu_section
  has_many :section, through: :menu_section
end
