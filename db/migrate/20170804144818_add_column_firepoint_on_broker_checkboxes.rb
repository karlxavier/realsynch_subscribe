class AddColumnFirepointOnBrokerCheckboxes < ActiveRecord::Migration[5.1]
  def change
  	add_column :broker_checkboxes, :firepoint, :boolean, default: :false
  	add_column :broker_checkboxes, :mojo, :boolean, default: :false
  end
end
