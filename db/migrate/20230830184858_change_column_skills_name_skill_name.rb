class ChangeColumnSkillsNameSkillName < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :name, :skill_name
  end
end
