# This migration comes from goldencobra (originally 20130909143144)
class CreateGoldencobraDomains < ActiveRecord::Migration
  def change
    create_table :goldencobra_domains do |t|
      t.string :hostname
      t.string :title
      t.string :client

      t.timestamps
    end
  end
end
