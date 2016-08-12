class Fxtran < ActiveRecord::Base
	belongs_to :status
	belongs_to :base_curr, :class_name => "Currency"
	belongs_to :quote_curr, :class_name => "Currency"
end
