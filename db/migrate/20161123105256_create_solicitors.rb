class CreateSolicitors < ActiveRecord::Migration
  def change
    create_table :solicitors do |t|
      t.string :name
      t.string :account_number
      t.timestamps null: false
    end
  end
end
