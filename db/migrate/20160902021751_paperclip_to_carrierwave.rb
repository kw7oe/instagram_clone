class PaperclipToCarrierwave < ActiveRecord::Migration
  def change
  	rename_column :users, :profile_picture_file_name, :profile_picture
  	rename_column :posts, :image_file_name, :image
  end
end
