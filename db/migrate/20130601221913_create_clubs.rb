class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :party_id
      t.string :website

      t.timestamps
    end
  end
end
