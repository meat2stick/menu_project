class CreateModifierGroup < ActiveRecord::Migration[8.0]
  def change
    create_table :modifier_group do |t|
      t.string :identifier
      t.string :label
      t.integer :selection_required_min
      t.integer :selection_required_max

      t.timestamps
    end
  end
end
