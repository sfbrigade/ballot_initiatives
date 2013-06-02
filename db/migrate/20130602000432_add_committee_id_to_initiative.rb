class AddCommitteeIdToInitiative < ActiveRecord::Migration
  def change
    add_column :initiatives, :committee_id, :integer
  end
end
