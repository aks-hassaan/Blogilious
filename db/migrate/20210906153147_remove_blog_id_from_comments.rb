class RemoveBlogIdFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :blog_id
  end
end
