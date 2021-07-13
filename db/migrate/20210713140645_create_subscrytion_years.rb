class CreateSubscrytionYears < ActiveRecord::Migration[6.1]
  def change
    create_table :subscrytion_years do |t|
      t.datetime :year_at
      t.references :scout, null: false, foreign_key: true
      t.integer :section, null: false, default: 1
      t.string :slug

      t.timestamps
    end
  end
end
