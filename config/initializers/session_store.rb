# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jqgrid_demo_session',
  :secret      => 'f0a5f51437429b761204e87360fc3abc3ccf4838363b112188db9b5d84d946384f7bdff219be4099214c9c5098c4c5784a765b2eba45dda51134f33ec9d85d7e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
