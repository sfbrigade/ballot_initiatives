class CreatePoliticalcommittees < ActiveRecord::Migration
  def change
    create_table :politicalcommittees do |t|
      t.string :name
      t.integer :issue_id

      t.timestamps
    end
  end
end
