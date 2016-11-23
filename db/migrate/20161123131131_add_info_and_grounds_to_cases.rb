class AddInfoAndGroundsToCases < ActiveRecord::Migration
  def change
    add_column :cases, :additional_info, :string
    add_column :cases, :grounds, :string
  end
end
