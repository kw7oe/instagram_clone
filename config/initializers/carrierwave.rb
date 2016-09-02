CarrierWave.configure do |config|
  config.dropbox_app_key = ENV["INSTAGRAM_DB_APP_KEY"]
  config.dropbox_app_secret = ENV["INSTAGRAM_DB_APP_SECRET"]
  config.dropbox_access_token = ENV["INSTAGRAM_DB_ACCESS_TOKEN"]
  config.dropbox_access_token_secret = ENV["INSTAGRAM_DB_ACCESS_TOKEN_SECRET"]
  config.dropbox_user_id = ENV["INSTAGRAM_DB_USER_ID"]
  config.dropbox_access_type = "app_folder"
end