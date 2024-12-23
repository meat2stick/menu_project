# frozen_string_literal: true

module Types
  class ModifierGroupType < Types::BaseObject
    field :id, ID, null: false
    field :identifier, String
    field :label, String
    field :selection_required_min, Integer
    field :selection_required_max, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :modifier, [Types::ModifierType], null: true

    def modifier
      if context[:item]
        return object.modifier.where(item_id: context[:item].id)
      end
      return object.modifier
    end
  end
end
