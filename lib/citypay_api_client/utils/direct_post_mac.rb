require 'openssl'

module DirectPostMac
  class << self

    def validate(licence_key, nonce, amount, identifier, mac_to_validate)
      mac = create(licence_key, nonce, amount, identifier)
      mac === mac_to_validate
    end

    def create(licence_key, nonce, amount, identifier)
      nonce_s = nonce.pack('c*').upcase

      value = []
      value.push(*nonce_s.bytes)
      value.push(*amount.bytes)
      value.push(*identifier.bytes)

      OpenSSL::HMAC.hexdigest('sha256', licence_key, value.pack("c*")).upcase
    end
  end
end