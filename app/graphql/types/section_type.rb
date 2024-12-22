# frozen_string_literal: true

module Types
  class SectionType < Types::BaseObject
    field :id, ID, null: false
    field :identifier, String
    field :label, String
    field :description, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :menu_section, [Types::MenuSectionType], null: true
    field :items, [Types::ItemType], null: true
  end

  # Resolver for items associated with the section
  def items
    object.items
  end
end
