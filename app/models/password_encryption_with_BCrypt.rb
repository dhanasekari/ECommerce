salt = BCrypt::Engine.generate_salt
password = BCrypt::Engine.hash_secret(password, salt)