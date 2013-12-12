Rails.application.config.middleware.use OmniAuth::Builder do
  provider :venmo, ENV['VENMO_ID'], ENV['VENMO_SECRET'], :scope => 'access_profile,make_payments'
end