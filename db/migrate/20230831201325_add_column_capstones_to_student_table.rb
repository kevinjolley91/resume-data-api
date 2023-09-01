class AddColumnCapstonesToStudentTable < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :capstone_id, :integer
  end
end
