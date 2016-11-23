# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


defendants = Defendant.create(
  [
    {
      first_name: 'Stephen',
      last_name: 'Richards',
      dob: Date.new(1966, 8, 14)
    },
    {
      first_name: 'Donald',
      last_name: 'Trump',
      dob: Date.new(1949, 4, 1)
    },
    {
      first_name: 'Theresa',
      last_name: 'May',
      dob: Date.new(1951, 11, 4)
    }
  ]
)
