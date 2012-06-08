class CreateGoldencobraCrmCompanies < ActiveRecord::Migration
  def change
    create_table :goldencobra_crm_companies do |t|
      t.string :title
      t.string :legal_form
      t.integer :location_id
      t.string :phone
      t.string :fax
      t.string :website
      t.string :sector

      t.timestamps
    end
  end
end
