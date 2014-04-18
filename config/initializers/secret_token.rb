# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Http::Application.config.secret_key_base = '1b9c24dc8beb9d8ca235e07005d48d4a12f94fac138cf1d58f0ad2f6fa43a9341309bb17c3d40b4a085dd5ded0df16d87eed90482347a88faa40af44b92058e1'
