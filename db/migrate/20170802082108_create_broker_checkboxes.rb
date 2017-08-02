class CreateBrokerCheckboxes < ActiveRecord::Migration[5.1]
  def change
    create_table :broker_checkboxes do |t|
      t.string :question
      t.boolean :value, default: :false
      t.integer :subscribe_id

      t.timestamps
    end
  end
end
