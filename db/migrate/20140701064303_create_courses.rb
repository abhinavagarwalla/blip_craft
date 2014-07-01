class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :blip_rating
      t.string :broad_category
      t.string :narrow_category
      t.integer :no_std_enrolled
      t.string :img_addr

      t.timestamps
    end
  end
end
