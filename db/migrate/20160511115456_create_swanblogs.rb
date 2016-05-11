class CreateSwanblogs < ActiveRecord::Migration
  def change
    create_table :swanblogs do |t|
      t.string :title
      t.string :contest
      t.string :text
      t.date :date

      t.timestamps null: false
    end
  end
end
