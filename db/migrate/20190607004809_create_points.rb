class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.decimal :x, precision: 7, scale: 3
      t.decimal :y, precision: 7, scale: 3

      t.timestamps
    end
  end
end
