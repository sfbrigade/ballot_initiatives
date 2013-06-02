class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :committee_id
      t.integer :firm_id
      t.string :services
      t.integer :amount_promised
      t.integer :amount_received
      t.integer :initiative_id

      t.timestamps
    end
  end
end
