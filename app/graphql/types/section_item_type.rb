module Types
  class SectionItemType < GraphQL::Schema::Object
    field :id, ID
    field :section, Types::SectionType
    field :item, Types::ItemType
    field :display_order, Integer
  end
end