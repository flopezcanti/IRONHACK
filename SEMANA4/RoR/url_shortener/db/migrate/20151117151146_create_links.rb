class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url_original
      t.integer :url_short

      t.timestamps null: false
    end
  end
end
