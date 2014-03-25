# This migration comes from goldencobra (originally 20120313125443)
class CreateGoldencobraPermissions < ActiveRecord::Migration
  def self.up
    create_table :goldencobra_permissions do |t|
      t.string :action
      t.string :subject_class
      t.string :subject_id
      t.integer :role_id
      t.integer :sorter_id, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :goldencobra_permissions
  end

end
