class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.text :description
      t.text :skills
      t.integer :user_id

      t.timestamps
    end
  end
end
