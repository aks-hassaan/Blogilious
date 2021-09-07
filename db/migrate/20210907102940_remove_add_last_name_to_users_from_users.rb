class RemoveAddLastNameToUsersFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :AddLastNameToUsers
  end
end
