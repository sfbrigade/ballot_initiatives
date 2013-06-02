class AddIssueIdsToPoliticalcommittee < ActiveRecord::Migration
  def change
    add_column :politicalcommittees, :issue_ids, :string
  end
end
