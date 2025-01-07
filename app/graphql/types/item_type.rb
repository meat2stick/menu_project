# frozen_string_literal: true

module Types
  class ItemType < Types::BaseObject
    field :id, ID
    field :identifier, String
    field :label, String
    field :description, String
    field :price, Float
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
    field :modifier_group, [ Types::ModifierGroupType ]
    field :modifier, [ Types::ModifierType ]
    field :display_order, Integer

    def display_order
      def section_id = context[:section]&.id
      if section_id
        return object.display_order(section_id)
      end
      null
    end

  end
end
