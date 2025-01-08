# frozen_string_literal: true

module Types
  class MenuType < Types::BaseObject
    field :id, ID
    field :identifier, String
    field :label, String
    field :state, String
    field :start_date, GraphQL::Types::ISO8601Date
    field :end_date, GraphQL::Types::ISO8601Date
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
    field :sections, [ Types::SectionType ]
    field :menu_sections, [ Types::MenuSectionType ]

    def sections
      MenuSection.where(menu_id: object.id).map do |menu_section|
        section = menu_section.section
        section.display_order = menu_section.display_order
        section
      end
    end
  end
end
