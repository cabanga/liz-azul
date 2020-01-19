class CreateEscuteiros < ActiveRecord::Migration[6.0]
  def change
    create_table :escuteiros do |t|
      t.string :nome
      t.datetime :data_nascimento
      t.string :contacto
      t.string :referencia
      t.references :agrupamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
