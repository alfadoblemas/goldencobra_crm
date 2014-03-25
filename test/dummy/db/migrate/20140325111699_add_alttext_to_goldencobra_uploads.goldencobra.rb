# This migration comes from goldencobra (originally 20120821105002)
class AddAlttextToGoldencobraUploads < ActiveRecord::Migration
  def change
    add_column :goldencobra_uploads, :alt_text, :string
  end
end
