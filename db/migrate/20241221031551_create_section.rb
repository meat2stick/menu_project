class CreateSection < ActiveRecord::Migration[8.0]
  def change
    create_table :section do |t|
      t.string :identifier
      t.string :label
      t.string :description

      t.timestamps
    end
  end
end
