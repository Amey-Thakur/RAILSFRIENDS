# ==============================================================================
# Filename: 20220524032601_create_friends.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# This migration establishes the `friends` table in the database.
# It defines the core schema for storing contact information including
# names, email, phone number, and social media handles.
#
# Architecture:
# - Table: `friends`
# - Columns: `first_name`, `last_name`, `email`, `phone`, `twitter`.
# - Timestamps: Automatically adds `created_at` and `updated_at`.
# ==============================================================================

class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :twitter

      t.timestamps
    end
  end
end
