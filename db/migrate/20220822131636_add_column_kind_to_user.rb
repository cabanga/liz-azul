class AddColumnKindToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :kind, :integer, null: false, default: 0
  end
end
