class AddInitiativeIssueTable < ActiveRecord::Migration
  def change
     create_table :initiative_issues do |t|
      t.belongs_to :initiative
      t.belongs_to :issue
    end
  end
end
