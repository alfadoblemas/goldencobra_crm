# This migration comes from goldencobra (originally 20121001092249)
class AddNamesToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :first_name, :string
    add_column :visitors, :last_name, :string
  end
end
