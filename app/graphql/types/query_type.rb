# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add a field to fetch all menus
    field :menus, [Types::MenuType], null: false, description: "Retrieve all menus"

    # Define the resolver for the menus field
    def menus
      Menu.all
    end
  end
end
