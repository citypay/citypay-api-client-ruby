require 'securerandom'

def generate_random_id
  charset = 'abcdefghijklmnopqrstuvwxyz0123456789'
  bytes = SecureRandom.random_bytes(10).bytes

  random_string = bytes.map { |b| charset[b % charset.length] }.join
  "test-#{random_string}"
end