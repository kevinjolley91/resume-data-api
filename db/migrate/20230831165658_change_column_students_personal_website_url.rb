class ChangeColumnStudentsPersonalWebsiteUrl < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :"personal_blog/website_url", :personal_website_url
  end
end
