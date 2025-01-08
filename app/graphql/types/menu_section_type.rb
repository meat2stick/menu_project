module Types
  class MenuSectionType < GraphQL::Schema::Object
    field :id, ID
    field :menu, Types::MenuType
    field :section, Types::SectionType
    field :display_order, Integer
  end
end
