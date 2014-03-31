class AddVisitorToGoldencobraCrmMandates < ActiveRecord::Migration
  def change
    add_column :goldencobra_crm_mandates, :visitor_id, :integer
  end
end
