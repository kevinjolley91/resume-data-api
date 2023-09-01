class RemoveColumnCapstoneIdFromStudent < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :capstone_id
  end
end
