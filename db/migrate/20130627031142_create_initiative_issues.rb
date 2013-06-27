class CreateInitiativeIssues < ActiveRecord::Migration
  def change
    create_table :initiative_issues do |t|
      t.integer :initiative_id
      t.integer :issue_id

      t.timestamps
    end
  end
end
