class CreateRegioes < ActiveRecord::Migration[6.0]
  def change
    create_table :regioes do |t|
      t.string :nome
      t.string :lema

      t.timestamps
    end
  end
end
