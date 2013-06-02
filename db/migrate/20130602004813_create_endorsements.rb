class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.integer :initiative_id
      t.boolean :supporting

      t.timestamps
    end
  end
end
