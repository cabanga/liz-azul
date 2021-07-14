class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :slug
      t.integer :start_age, null: false, default: 0
      t.integer :end_age, null: true, default: 0

      t.timestamps
    end
  end
end
