class AddColumnToSubscribe < ActiveRecord::Migration[5.1]
  def change
    add_column :subscribes, :firstname, :string
    add_column :subscribes, :lastname, :string
  end
end
