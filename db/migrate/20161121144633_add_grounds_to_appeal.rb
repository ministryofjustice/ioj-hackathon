class AddGroundsToAppeal < ActiveRecord::Migration
  def change
    add_column :appeals, :grounds, :string
  end
end
