# frozen_string_literal: true

module Types
  class SectionType < Types::BaseObject
    field :id, ID
    field :identifier, String
    field :label, String
    field :description, String
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
    field :items, [Types::ItemType]
    field :display_order, Integer
    field :section_item, [Types::SectionItemType]

    def items
      SectionItem.where(section_id: object.id).map do |section_item|
        item = section_item.item
        item.display_order = section_item.display_order
        item
      end
    end
  end
end
