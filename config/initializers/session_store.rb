# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_financas-on-rails_session',
  :secret      => 'c1c35ea184e9e188b1728bf8402144b75c862cae71be1d03ecfb0acedd280d2057f1ca51b1e38d1272b6990f6242036bae7cddc8800d37909a2a226a24de7d43'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
