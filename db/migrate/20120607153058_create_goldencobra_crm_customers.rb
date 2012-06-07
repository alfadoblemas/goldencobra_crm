class CreateGoldencobraCrmCustomers < ActiveRecord::Migration
  def change
    create_table :goldencobra_crm_customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :login
      t.integer :company_id
      t.integer :user_id

      t.timestamps
    end
  end
end
