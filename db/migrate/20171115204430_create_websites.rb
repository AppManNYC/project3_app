class CreateWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :websites do |t|
      t.text :url
      t.integer :matthew_id

      t.timestamps
    end
  end
end
