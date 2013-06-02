class AddMoreinfoToInitiative < ActiveRecord::Migration
  def change
    add_column :initiatives, :moreinfo, :string
  end
end
