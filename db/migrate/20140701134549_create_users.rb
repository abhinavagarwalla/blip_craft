class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :type
      t.string :email
      t.integer :active_or_not
      t.string :forgot_key

      t.timestamps
    end
  end
end
