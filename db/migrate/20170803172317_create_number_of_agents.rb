class CreateNumberOfAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :number_of_agents do |t|
      t.string :agents

      t.timestamps
    end
    add_column :subscribes, :number_of_agents_id, :integer
  end
end
