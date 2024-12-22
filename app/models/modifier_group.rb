class ModifierGroup < ApplicationRecord
  has_many :modifier
  has_many :item_modifier_group
  has_many :items, through: :item_modifier_group
end
