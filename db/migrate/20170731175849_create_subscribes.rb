class CreateSubscribes < ActiveRecord::Migration[5.1]
  def change
    create_table :subscribes do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.string :message

      t.timestamps
    end
  end
end
