class CreateMatthews < ActiveRecord::Migration[5.1]
  def change
    create_table :matthews do |t|
      t.string :login

      t.timestamps
    end
  end
end
