class AddSupportrateToInitiative < ActiveRecord::Migration
  def change
    add_column :initiatives, :supportrate, :string
  end
end
