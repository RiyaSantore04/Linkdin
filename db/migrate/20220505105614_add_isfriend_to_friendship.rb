# frozen_string_literal: true

class AddIsfriendToFriendship < ActiveRecord::Migration[6.1]
  def change
    add_column :friendships, :isfriend, :boolean, default: false
  end
end
