class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|

      t.integer :maat_number
      t.integer :defendant_id
      t.integer :solicitor_id
      t.string :offences
      t.string :court

      t.timestamps null: false
    end
  end
end
