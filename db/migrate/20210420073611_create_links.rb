class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :original_url
      t.string :short_url
      t.integer :clicked, default: 0
      t.timestamps null: false
    end
  end
end
