class AddClubIdToEndorsement < ActiveRecord::Migration
  def change
    add_column :endorsements, :club_id, :integer
  end
end
