# This migration comes from goldencobra (originally 20130507115517)
class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :locale
      t.string :key
      t.text :value
      t.text :interpolations
      t.boolean :is_proc, :default => false

      t.timestamps
    end
  end
end
