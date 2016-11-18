class CreateAppeals < ActiveRecord::Migration
  def change
    create_table :appeals do |t|
      t.string :full_name
      t.date :dob
      t.string :solicitor_name
      t.string :provider_acct_num

      t.timestamps null: false
    end
  end
end
