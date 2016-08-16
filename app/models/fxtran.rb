class Fxtran < ActiveRecord::Base
	belongs_to :requestor, {class_name: "User", foreign_key: :requestor_id}
  belongs_to :acceptor, {class_name: "User", foreign_key: :acceptor_id}
	belongs_to :status
	belongs_to :base_curr, :class_name => "Currency"
	belongs_to :quote_curr, :class_name => "Currency"

	validates :base_amount, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
	validates :base_curr_id, presence: true
	validates :quote_curr_id, presence: true
	validates :lat, presence: true
	validates :lng, presence: true
end
