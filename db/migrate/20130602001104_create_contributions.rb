class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :amount
      t.integer :initiative_id
      t.integer :committee_id

      t.timestamps
    end
  end
end
