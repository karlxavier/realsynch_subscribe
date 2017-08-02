class AddQuestionsColumnToSubscribe < ActiveRecord::Migration[5.1]
  def change
    add_column :broker_checkboxes, :agent_lead, :boolean, default: :false
    add_column :broker_checkboxes, :boom_town, :boolean, default: :false
    add_column :broker_checkboxes, :brivity, :boolean, default: :false
    add_column :broker_checkboxes, :commision_inc, :boolean, default: :false
    add_column :broker_checkboxes, :lone_wolf, :boolean, default: :false
    add_column :broker_checkboxes, :real_geeks, :boolean, default: :false
    add_column :broker_checkboxes, :rethink, :boolean, default: :false
    add_column :broker_checkboxes, :real_webmaster, :boolean, default: :false
    add_column :broker_checkboxes, :top_producer, :boolean, default: :false
    add_column :broker_checkboxes, :voicepad, :boolean, default: :false
    add_column :broker_checkboxes, :vulcan7, :boolean, default: :false
    add_column :broker_checkboxes, :proquest, :boolean, default: :false
    add_column :broker_checkboxes, :other, :string

    remove_column :broker_checkboxes, :question
    remove_column :broker_checkboxes, :value
  end
end
