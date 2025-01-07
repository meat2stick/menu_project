class Item < ApplicationRecord
  has_many :section_item
  has_many :sections, through: :section_item
  has_many :item_modifier_group
  has_many :modifier_group, through: :item_modifier_group
  has_many :modifier, class_name: "Modifier", foreign_key: "item_id"

  def display_order(section_id)
    section_item.find_by(section_id: section_id)&.display_order
  end
end
