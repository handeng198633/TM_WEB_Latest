class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :line_name
      t.integer :line_day
      t.text :detail_info

      t.timestamps null: false
    end
  end
end
