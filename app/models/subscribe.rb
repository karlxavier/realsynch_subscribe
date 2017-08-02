class Subscribe < ApplicationRecord
	has_many :broker_checkboxes
	# accepts_nested_attributes_for :broker_checkboxes, :reject_if => proc { |attributes| attributes['subscribe_id'].blank? },  :allow_destroy => true
	accepts_nested_attributes_for :broker_checkboxes, :allow_destroy => true
end
