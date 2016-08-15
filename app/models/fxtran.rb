class Fxtran < ActiveRecord::Base
	belongs_to :requestor, {class_name: "User", foreign_key: :requestor_id}
  belongs_to :acceptor, {class_name: "User", foreign_key: :acceptor_id}
	belongs_to :status
	belongs_to :base_curr, :class_name => "Currency"
	belongs_to :quote_curr, :class_name => "Currency"
end
