# ==============================================================================
# Filename: friend.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `Friend` model represents a core entity in the system—a contact belonging
# to a registered user. It encapsualtes the data structure and logical 
# associations for the "friends list" functionality.
#
# Architecture:
# - Schema: Stores biographical data (first name, last name, email, phone, twitter).
# - Associations: Linked to the `User` model via `belongs_to`.
# ==============================================================================

class Friend < ApplicationRecord
	belongs_to :user
end
