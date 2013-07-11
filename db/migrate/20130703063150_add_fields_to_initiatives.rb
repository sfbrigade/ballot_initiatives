class AddFieldsToInitiatives < ActiveRecord::Migration
  def change
    add_column :initiatives, :month, :integer
    add_column :initiatives, :yes_votes, :integer
    add_column :initiatives, :no_votes, :integer
  end
end
