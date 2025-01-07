# frozen_string_literal: true

module Types
  class SectionType < Types::BaseObject
    field :id, ID
    field :identifier, String
    field :label, String
    field :description, String
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
    field :items, [ Types::ItemType ]
    field :display_order, Integer

    def display_order
      def menu_id = context[:menu]&.id
      if menu_id
        return object.display_order(menu_id)
      end
      null
    end

    def items
      # Pass the current `section` to the context
      context[:section] = object
      object.items
    end
  end
end
