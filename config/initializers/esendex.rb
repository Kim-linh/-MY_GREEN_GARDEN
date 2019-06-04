Esendex.configure do |config|
  config.username = ENV["ESENDEX_EMAIL"]
  config.password = ENV["ESENDEX_EMAIL_PASSWORD"]
  config.account_reference = ENV["ESENDEX_ACCOUNT"]
end
