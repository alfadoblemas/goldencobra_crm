# This migration comes from goldencobra (originally 20120615150128)
class AddAttachableToGoldencobraUploads < ActiveRecord::Migration
  def change
    add_column :goldencobra_uploads, :attachable_id, :integer
    add_column :goldencobra_uploads, :attachable_type, :string
  end
end
