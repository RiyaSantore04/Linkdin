class Deletemessge < ActiveRecord::Migration[6.1]
  def change
      add_column :messages, :no, :integer
  end
end
