class ChangeInitiatives < ActiveRecord::Migration
  def up
    change_table :initiatives do |t|
      t.rename :initiativetype, :initiative_type
      t.rename :supportrate, :support_rate
      t.rename :ballotcode, :ballot_code
      t.rename :moreinfo, :more_info
      t.change(:year, :integer)
      t.change(:status, :boolean)
      t.change(:support_rate, :float)
    end
  end

  # def down
  #   change_table :initiatives do |t|
  #     t.rename :initiative_type, :initiativetype
  #     t.rename :support_rate, :supportrate
  #     t.rename :ballot_code, :ballotcode
  #     t.rename :more_info, :moreinfo
  #   end
  # end
end
