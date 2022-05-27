# frozen_string_literal: true

class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :designation
      t.string :company_name
      t.string :location
      t.date :probation_period
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
