class CreateDefendants < ActiveRecord::Migration
  def change
    create_table :defendants do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
    end
  end
end
