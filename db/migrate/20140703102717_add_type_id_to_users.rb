class AddTypeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type_id, :boolean
  end
end
