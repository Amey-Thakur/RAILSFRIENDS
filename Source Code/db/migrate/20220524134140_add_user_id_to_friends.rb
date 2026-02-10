# ==============================================================================
# Filename: 20220524134140_add_user_id_to_friends.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# This migration creates the association between Users and Friends.
# It adds a `user_id` foreign key to the `friends` table and indexes it
# to optimize query performance for user-scoped data retrieval.
#
# Architecture:
# - Schema Change: Adds `user_id` (Integer) to `friends`.
# - Performance: Adds database index for `user_id`.
# ==============================================================================

class AddUserIdToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :user_id, :integer
    add_index :friends, :user_id
  end
end
