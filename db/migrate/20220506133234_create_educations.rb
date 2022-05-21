class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :collage
      t.string :course
      t.string :field_of_study
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
