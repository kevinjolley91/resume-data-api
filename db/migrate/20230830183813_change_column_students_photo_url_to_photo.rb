class ChangeColumnStudentsPhotoUrlToPhoto < ActiveRecord::Migration[7.0]
  def change 
    rename_column :students, :photo_url, :photo
  end
end
