# ==============================================================================
# Filename: application_job.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `ApplicationJob` serves as the base class for all background jobs in
# the application. It provides a shared interface for job execution, 
# error handling, and queue management.
#
# Architecture:
# - Inheritance: Inherits from `ActiveJob::Base`.
# - Resilience: Configured to handle common failure scenarios (commented defaults).
# ==============================================================================

class ApplicationJob < ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
end
