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
  end

  def modifier_group
    # Pass the current `item` to the context
    context[:item] = object
    object.modifier_group
  end
end
