# frozen_string_literal: true

class RemoveColumnRequesterIdToFriendship < ActiveRecord::Migration[6.1]
  def change
    remove_column :friendships, :requester_id, :integer
  end
end
