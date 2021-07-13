class CreateScouts < ActiveRecord::Migration[6.1]
  def change
    create_table :scouts do |t|
      t.string :name
      t.integer :identification_type, null: false, default: 0
      t.string :identification_number
      t.datetime :birth_at
      t.datetime :started_at
      t.string :parent_name
      t.string :cell_phone1
      t.string :cell_phone2
      t.string :reference_numer
      t.string :slug

      t.timestamps
    end
  end
end

