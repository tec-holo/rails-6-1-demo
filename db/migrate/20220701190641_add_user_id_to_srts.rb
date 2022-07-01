class AddUserIdToSrts < ActiveRecord::Migration[6.1]
  def change
    add_column :srts, :user_id, :integer
    add_index :srts, :user_id
  end
end
