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
  end
end
