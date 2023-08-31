class ChangesColumnAdminToFalse < ActiveRecord::Migration[7.0]
  def change
    change_column :students, :admin, :boolean, :default => false
  end
end
