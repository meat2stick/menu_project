# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

namespace :db do
  desc "Purge seeded data"
  task purge: :environment do
    puts "Purging db"

    # Adjust order of deletion to respect foreign key constraints
    ItemModifierGroup.destroy_all
    Modifier.destroy_all
    ModifierGroup.destroy_all
    SectionItem.destroy_all
    Item.destroy_all
    MenuSection.destroy_all
    Section.destroy_all
    Menu.destroy_all

    puts "Seeded data purged successfully."
  end
end