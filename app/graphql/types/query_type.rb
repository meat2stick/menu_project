# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :menus, [ Types::MenuType ], null: false, description: "Retrieve all menus"

    field :menu, Types::MenuType, null: true, description: "Retrieve menu by id" do
      argument :id, ID, required: true
    end

    field :sections, [ Types::SectionType ], null: false, description: "Retrieve all sections"

    field :items, [ Types::ItemType ], null: false, description: "Retrieve all items"

    field :modifierGroups, [ Types::ModifierGroupType ], null: false, description: "Retrieve all modifier groups"

    field :modifiers, [ Types::ModifierType ], null: false, description: "Retrieve all modifiers"

    def menus
      Menu.all
    end

    def menu(id:)
      Menu.find_by(id: id)
    end

    def sections
      Section.all
    end

    def items
      Item.all
    end

    def modifierGroups
      ModifierGroup.all
    end

    def modifiers
      Modifier.all
    end
  end
end
