class RenameColumnStudentsPersonalToIncludeSlash < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :personal_blog_or_website_url, :"personal_blog/website_url"
  end
end
