class CreateAgrupamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :agrupamentos do |t|
      t.string :nome
      t.integer :numero
      t.string :lema
      t.references :regiao, null: false, foreign_key: true

      t.timestamps
    end
  end
end
