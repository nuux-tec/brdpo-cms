class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :duration
      t.date :when
      t.float :price
      t.text :about

      t.timestamps
    end
  end
end
