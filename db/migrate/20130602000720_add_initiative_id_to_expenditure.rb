class AddInitiativeIdToExpenditure < ActiveRecord::Migration
  def change
    add_column :expenditures, :initiative_id, :integer
  end
end
