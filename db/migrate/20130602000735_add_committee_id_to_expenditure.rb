class AddCommitteeIdToExpenditure < ActiveRecord::Migration
  def change
    add_column :expenditures, :committee_id, :integer
  end
end
