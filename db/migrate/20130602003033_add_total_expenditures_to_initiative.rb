class AddTotalExpendituresToInitiative < ActiveRecord::Migration
  def change
    add_column :initiatives, :total_expenditures, :integer
  end
end
