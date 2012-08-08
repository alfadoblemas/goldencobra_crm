# This migration comes from goldencobra (originally 20120807124808)
class AddImageToGoldencobraMenues < ActiveRecord::Migration
  def change
    add_column :goldencobra_menues, :image_id, :integer
  end
end
