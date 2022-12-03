class ChangePostcommentsToPostComments < ActiveRecord::Migration[6.1]
  def change
    rename_table :postcomments, :post_comments
  end
end
