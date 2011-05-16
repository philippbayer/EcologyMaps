# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sls_session',
  :secret      => '237e961175ebf5c29628c3358a0eff5f3d49daeb33f77518f57951171ed23a4a15ae3f6ea019b273b5237a6b1bd7b8267b611ef3c04380e89ffca0194f4e1750'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
