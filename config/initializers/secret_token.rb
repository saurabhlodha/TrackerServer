# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
TrackerServer::Application.config.secret_key_base = '2b09b912911fe925ca2b03abf00bfbed849c2137766a978b5b57aabbf5abe73490c71780217639f2e4892654164e382f59cdbb77be85561af87b3f7ceedd52a4'
