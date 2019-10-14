class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :about
      t.datetime :when
      t.float :price
      t.string :location

      t.timestamps
    end
  end
end
