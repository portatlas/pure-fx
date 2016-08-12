require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


currency_csv_file = File.join Rails.root, "currency_list.csv"
CSV.foreach(currency_csv_file) do |row|
	currency_code, currency_name = row
	Currency.create(curr_code: currency_code, curr_name: currency_name)
end