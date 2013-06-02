class CreateOfficials < ActiveRecord::Migration
  def change
    create_table :officials do |t|
      t.integer :person_id
      t.string :office
      t.integer :politicalcommittee_id
      t.string :duties
      t.integer :issue_id
      t.date :term_begin
      t.date :term_end
      t.string :term_limit
      t.date :next_election
      t.integer :firm_id

      t.timestamps
    end
  end
end
