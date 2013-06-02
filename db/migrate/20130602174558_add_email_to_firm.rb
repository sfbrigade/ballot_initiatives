class AddEmailToFirm < ActiveRecord::Migration
  def change
    add_column :firms, :email, :string
  end
end
