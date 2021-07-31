class CreateConfirmations < ActiveRecord::Migration[6.1]
  def change
    create_table :confirmations do |t|
      t.references :scout, null: false, foreign_key: true
      t.string :slug
      t.datetime :year_at, null: false, default: Time.now
      t.references :position, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true
      t.boolean :status, null: false, default: true

      t.timestamps
    end
  end
end
