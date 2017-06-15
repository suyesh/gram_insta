class AddPostImageToUploads < ActiveRecord::Migration[5.1]
  def change
    add_column :uploads, :post_image, :string
  end
end
