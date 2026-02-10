# ==============================================================================
# Filename: user.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `User` model represents an authenticated account in the system. It uses 
# the Devise framework for identity management and acts as a parent entity 
# for the `Friend` resource.
#
# Architecture:
# - Authentication: Implements `db_authenticatable`, `registerable`, `validatable`, 
#   and session persistence modules.
# - Associations: Owns many `friends` via the `has_many` relationship.
# ==============================================================================

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :friends
end
