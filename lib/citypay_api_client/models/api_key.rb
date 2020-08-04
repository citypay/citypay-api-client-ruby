require 'date'
require 'openssl'
require 'base64'

module CityPayApiClient
  class ApiKey

    def initialize(client_id:, licence_key:)
      @client_id, @licence_key = client_id, licence_key
      @nonce = Random.new(16)
      @datetime = DateTime.now
    end

    def client_id
      @client_id
    end

    def nonce=(nonce)
      if nonce.is_a? String
        @nonce = nonce.scan(/../).map { |x| x.hex.chr }.join.bytes
      else
        @nonce = nonce
      end

    end

    def datetime=(datetime)
      @datetime = datetime
    end

    private def hex_to_bytes(str)
      str.scan(/../).map { |x| x.hex.chr }.join.bytes
    end

    def generate

      ds = @datetime.strftime("%Y%m%d%H%M")
      message = []
      message.push(*@client_id.bytes)
      message.push(*@nonce)
      message.push(*hex_to_bytes(ds))
      # message = message.join
      digest = OpenSSL::HMAC.digest('sha256', @licence_key, message.pack("c*"))

      dest = []
      dest.push(*@client_id.bytes)
      dest.push(*"\x3A".bytes)
      dest.push(*@nonce.each_entry.map { |b| '%02X' % (b & 0xFF) }.join.upcase.bytes)
      dest.push(*"\x3A".bytes)
      dest.push(*digest.bytes)
      Base64.strict_encode64(dest.pack("c*"))

    end

  end
end
