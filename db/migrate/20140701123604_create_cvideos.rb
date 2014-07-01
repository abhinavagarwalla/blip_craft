class CreateCvideos < ActiveRecord::Migration
  def change
    create_table :cvideos do |t|
      t.string :v_link
      t.string :v_desc
      t.integer :video_id
      t.integer :course_id

      t.timestamps
    end
  end
end
