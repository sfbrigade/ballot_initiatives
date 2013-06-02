class AddByClubToEndorsement < ActiveRecord::Migration
  def change
    add_column :endorsements, :by_club, :boolean
  end
end
