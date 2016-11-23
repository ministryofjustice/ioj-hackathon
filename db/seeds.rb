# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

Defendant.delete_all

# defendants
data_file_path = File.join(Rails.root, 'db', 'data', 'Appeal Form Data - IJOP.csv')

CSV.foreach(data_file_path) do |row|
  maat_number, defendant_name, dob, offences, court, solicitor, acct_no, _signature, details, ground, circumstances, additional = row
  next if maat_number == 'MAAT Number'
  first_name, last_name = defendant_name.split(' ')
  Defendant.create(first_name: first_name, last_name: last_name, dob: dob)
end
