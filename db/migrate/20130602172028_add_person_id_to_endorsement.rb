class AddPersonIdToEndorsement < ActiveRecord::Migration
  def change
    add_column :endorsements, :person_id, :integer
  end
end
