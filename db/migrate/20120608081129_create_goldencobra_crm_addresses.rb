class CreateGoldencobraCrmAddresses < ActiveRecord::Migration
  def change
    create_table :goldencobra_crm_addresses do |t|
      t.integer :location_id
      t.string :title
      t.integer :customer_id

      t.timestamps
    end
  end
end
