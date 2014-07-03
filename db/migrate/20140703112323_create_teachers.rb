class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.text :description
      t.text :speciality
      t.integer :user_id

      t.timestamps
    end
  end
end
