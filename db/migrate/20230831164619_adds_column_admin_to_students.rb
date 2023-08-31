class AddsColumnAdminToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :admin, :bool
  end
end
