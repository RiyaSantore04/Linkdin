class AddAttributeToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :student_at, :string
    add_column :users, :contact, :integer
  end
end
