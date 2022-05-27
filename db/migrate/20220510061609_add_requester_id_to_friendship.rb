# frozen_string_literal: true

class AddRequesterIdToFriendship < ActiveRecord::Migration[6.1]
  def change
    add_column :friendships, :requester_id, :integer
  end
end
