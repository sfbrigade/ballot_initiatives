class AddTotalContributionsToInitiative < ActiveRecord::Migration
  def change
    add_column :initiatives, :total_contributions, :integer
  end
end
