require 'digest'

module DigestUtils
  class << self
    def validate_digest(auth_response, licence_key)

      string_to_convert = auth_response.authcode +
        auth_response.amount.to_s +
        auth_response.result_code +
        auth_response.merchantid.to_s +
        auth_response.transno.to_s +
        auth_response.identifier +
        licence_key

      auth_response.sha256 == Digest::SHA256.base64digest(string_to_convert)
    end
  end
end