class AddBallotcodeToInitiative < ActiveRecord::Migration
  def change
    add_column :initiatives, :ballotcode, :string
  end
end
