class AddInternalidToGoldencobraCrmMandates < ActiveRecord::Migration
  def change
    add_column :goldencobra_crm_mandates, :internal_id, :integer
  end
end
