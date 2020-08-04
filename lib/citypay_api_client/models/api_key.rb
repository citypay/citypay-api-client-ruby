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

    private def hexToBytes(str)
      str.scan(/../).map { |x| x.hex.chr }.join.bytes
    end

    def generate

      ds = @datetime.strftime("%Y%m%d%H%M")
      message = []
      message.push(*@client_id.bytes)
      message.push(*@nonce)
      message.push(*hexToBytes(ds))
      # message = message.join
      digest = OpenSSL::HMAC.digest('sha256', @licence_key, message.pack("c*"))

      dest = []
      dest.push(*@client_id.bytes)
      dest.push(*"\x3A".bytes)
      dest.push(*@nonce.each_entry.map { |b| '%02X' % (b & 0xFF) }.join.upcase.bytes)
      dest.push(*"\x3A".bytes)
      dest.push(*digest.bytes)

      # dt = datetime.strptime("2020-01-01 09:23:12", "%Y-%m-%d %H:%M:%S")
      # key = api_key_generate_for("PC2", "7G79TG62BAJTK669", bytearray.fromhex("acb875aef083de292299bd69fcdeb5c5"), dt)
      # self.assertEqual("UEMyOkFDQjg3NUFFRjA4M0RFMjkyMjk5QkQ2OUZDREVCNUM1Ol6Q3tCMPsYvqNhFelRD2zQHYlZquBGCY/6ZpZ0AngTF",key)
      Base64.strict_encode64(dest.pack("c*"))

      # Array(80, 67, 50,
      # 58,
      # 65, 67, 66, 56, 55, 53, 65, 69, 70, 48, 56, 51, 68, 69, 50, 57, 50, 50, 57, 57, 66, 68, 54, 57, 70, 67, 68, 69, 66, 53, 67, 53,
      # 58,
      # 94, -112, -34, -48, -116, 62, -58, 47, -88, -40, 69, 122, 84, 67, -37, 52, 7, 98, 86, 106, -72, 17, -126, 99, -2, -103, -91, -99, 0, -98, 4, -59
      # )

    end

  end
end
