class AddAppealDatesToCases < ActiveRecord::Migration
  def change
    add_column :cases, :appeal_date, :datetime
  end
end
