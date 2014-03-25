# This migration comes from goldencobra (originally 20121011062432)
class AddUsernameToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :username, :string
  end
end
