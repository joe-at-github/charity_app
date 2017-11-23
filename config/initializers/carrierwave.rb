# Attempt to make file upload optional in test mode

# if Rails.env.test? or Rails.env.cucumber?
#   CarrierWave.configure do |config|
#     config.storage = :file
#     config.enable_processing = false
#   end
# end