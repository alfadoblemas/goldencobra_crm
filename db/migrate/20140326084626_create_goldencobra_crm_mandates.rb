class CreateGoldencobraCrmMandates < ActiveRecord::Migration
  def change
    create_table :goldencobra_crm_mandates do |t|
      t.string :external_id
      t.string :server_name
      t.string :server_ip
      t.string :reference_id

      t.timestamps
    end
  end
end
