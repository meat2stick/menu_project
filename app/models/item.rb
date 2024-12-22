class Item < ApplicationRecord
  has_many :section_item
  has_many :sections, through: :section_item
  has_many :item_modifier_group
  has_many :modifier_group, through: :item_modifier_group
  has_many :modifier, class_name: "Modifier", foreign_key: "item_id"
end