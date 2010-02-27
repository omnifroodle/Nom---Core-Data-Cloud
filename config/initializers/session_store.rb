# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nom-nom_session',
  :secret      => 'f52aee4c33c020eb934adfa5a05b3500be97dd104a1dc7939501726b9cf2eda5736ca651574c19681a97a3c9fec4dda75e5bbc4611d0b19dce8a42130afd220a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
