class Currency < ActiveRecord::Base
	has_many :base_fxtran, :class_name => "Fxtran", :foreign_key => "base_curr_id"
	has_many :quote_fxtran, :class_name => "Fxtran", :foreign_key => "quote_curr_id"
end
