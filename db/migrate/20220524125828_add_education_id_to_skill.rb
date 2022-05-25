class AddEducationIdToSkill < ActiveRecord::Migration[6.1]
  def change
         add_column :skills, :education_id, :integer
  end
end
