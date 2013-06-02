class AddInitiativeIdToInitiative < ActiveRecord::Migration
  def change
    add_column :initiatives, :initiative_id, :integer
  end
end
