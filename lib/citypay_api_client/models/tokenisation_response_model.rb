=begin
#CityPay Payment API

# Welcome to the CityPay API, a robust HTTP API payment solution designed for seamless server-to-server  transactional processing. Our API facilitates a wide array of payment operations, catering to diverse business needs.  Whether you're integrating Internet payments, handling Mail Order/Telephone Order (MOTO) transactions, managing  Subscriptions with Recurring and Continuous Authority payments, or navigating the complexities of 3-D Secure  authentication, our API is equipped to support your requirements. Additionally, we offer functionalities for  Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids, and Completion processing, alongside the capability  for tokenised payments.  ## Compliance and Security Overview <aside class=\"notice\">   Ensuring the security of payment transactions and compliance with industry standards is paramount. Our API is    designed with stringent security measures and compliance protocols to safeguard sensitive information and meet    the rigorous requirements of Visa, MasterCard, and the PCI Security Standards Council. </aside>  ### Key Compliance and Security Measures  * **TLS Encryption**: All data transmissions must utilise TLS version 1.2 or higher, employing [strong cryptography](#enabled-tls-ciphers). Our infrastructure strictly enforces this requirement to maintain the integrity and confidentiality of data in transit. We conduct regular scans and assessments of our TLS endpoints to identify and mitigate vulnerabilities. * **Data Storage Prohibitions**: Storing sensitive cardholder data (CHD), such as the card security code (CSC) or primary account number (PAN), is strictly prohibited. Our API is designed to minimize your exposure to sensitive data, thereby reducing your compliance burden. * **Data Masking**: For consumer protection and compliance, full card numbers must not be displayed on receipts or any customer-facing materials. Our API automatically masks PANs, displaying only the last four digits to facilitate safe receipt generation. * **Network Scans**: If your application is web-based, regular scans of your hosting environment are mandatory to identify and rectify potential vulnerabilities. This proactive measure is crucial for maintaining a secure and compliant online presence. * **PCI Compliance**: Adherence to PCI DSS standards is not optional; it's a requirement for operating securely and legally in the payments ecosystem. For detailed information on compliance requirements and resources, please visit the PCI Security Standards Council website [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/). * **Request Validation**: Our API includes mechanisms to verify the legitimacy of each request, ensuring it pertains to a valid account and originates from a trusted source. We leverage remote IP address verification alongside sophisticated application firewall technologies to thwart a wide array of common security threats.  ## Getting Started Before integrating with the CityPay API, ensure your application and development practices align with the outlined compliance and security measures. This preparatory step is crucial for a smooth integration process and the long-term success of your payment processing operations.  For further details on API endpoints, request/response formats, and code examples, proceed to the subsequent sections of our documentation. Our aim is to provide you with all the necessary tools and information to integrate our payment processing capabilities seamlessly into your application.  Thank you for choosing CityPay API. We look forward to supporting your payment processing needs with our secure, compliant, and versatile API solution. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module CityPayApiClient
  class TokenisationResponseModel
    # The result of any authentication using 3d_secure authorisation against ecommerce transactions. Values are:  <table> <tr> <th>Value</th> <th>Description</th> </tr> <tr> <td>Y</td> <td>Authentication Successful. The Cardholder's password was successfully validated.</td> </tr> <tr> <td>N</td> <td>Authentication Failed. Customer failed or cancelled authentication, transaction denied.</td> </tr> <tr> <td>A</td> <td>Attempts Processing Performed Authentication could not be completed but a proof of authentication attempt (CAVV) was generated.</td> </tr> <tr> <td>U</td> <td>Authentication Could Not Be Performed Authentication could not be completed, due to technical or other problem.</td> </tr> </table> 
    attr_accessor :authen_result

    # Determines whether the bin range was found to be a commercial or business card.
    attr_accessor :bin_commercial

    # Determines whether the bin range was found to be a debit card. If false the card was considered as a credit card.
    attr_accessor :bin_debit

    # A description of the bin range found for the card.
    attr_accessor :bin_description

    # An Electronic Commerce Indicator (ECI) used to identify the result of authentication using 3DSecure. 
    attr_accessor :eci

    # The identifier provided within the request.
    attr_accessor :identifier

    # A masked value of the card number used for processing displaying limited values that can be used on a receipt. 
    attr_accessor :maskedpan

    # The name of the card scheme of the transaction that processed the transaction such as Visa or MasterCard. 
    attr_accessor :scheme

    # A Base58 encoded SHA-256 digest generated from the token value Base58 decoded and appended with the nonce value UTF-8 decoded.
    attr_accessor :sig_id

    # The token used for presentment to authorisation later in the processing flow.
    attr_accessor :token

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authen_result' => :'authen_result',
        :'bin_commercial' => :'bin_commercial',
        :'bin_debit' => :'bin_debit',
        :'bin_description' => :'bin_description',
        :'eci' => :'eci',
        :'identifier' => :'identifier',
        :'maskedpan' => :'maskedpan',
        :'scheme' => :'scheme',
        :'sig_id' => :'sig_id',
        :'token' => :'token'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authen_result' => :'String',
        :'bin_commercial' => :'Boolean',
        :'bin_debit' => :'Boolean',
        :'bin_description' => :'String',
        :'eci' => :'String',
        :'identifier' => :'String',
        :'maskedpan' => :'String',
        :'scheme' => :'String',
        :'sig_id' => :'String',
        :'token' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CityPayApiClient::TokenisationResponseModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CityPayApiClient::TokenisationResponseModel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'authen_result')
        self.authen_result = attributes[:'authen_result']
      end

      if attributes.key?(:'bin_commercial')
        self.bin_commercial = attributes[:'bin_commercial']
      end

      if attributes.key?(:'bin_debit')
        self.bin_debit = attributes[:'bin_debit']
      end

      if attributes.key?(:'bin_description')
        self.bin_description = attributes[:'bin_description']
      end

      if attributes.key?(:'eci')
        self.eci = attributes[:'eci']
      end

      if attributes.key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.key?(:'maskedpan')
        self.maskedpan = attributes[:'maskedpan']
      end

      if attributes.key?(:'scheme')
        self.scheme = attributes[:'scheme']
      end

      if attributes.key?(:'sig_id')
        self.sig_id = attributes[:'sig_id']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@identifier.nil? && @identifier.to_s.length > 50
        invalid_properties.push('invalid value for "identifier", the character length must be smaller than or equal to 50.')
      end

      if !@identifier.nil? && @identifier.to_s.length < 4
        invalid_properties.push('invalid value for "identifier", the character length must be great than or equal to 4.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@identifier.nil? && @identifier.to_s.length > 50
      return false if !@identifier.nil? && @identifier.to_s.length < 4
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] identifier Value to be assigned
    def identifier=(identifier)
      if identifier.nil?
        fail ArgumentError, 'identifier cannot be nil'
      end

      if identifier.to_s.length > 50
        fail ArgumentError, 'invalid value for "identifier", the character length must be smaller than or equal to 50.'
      end

      if identifier.to_s.length < 4
        fail ArgumentError, 'invalid value for "identifier", the character length must be great than or equal to 4.'
      end

      @identifier = identifier
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authen_result == o.authen_result &&
          bin_commercial == o.bin_commercial &&
          bin_debit == o.bin_debit &&
          bin_description == o.bin_description &&
          eci == o.eci &&
          identifier == o.identifier &&
          maskedpan == o.maskedpan &&
          scheme == o.scheme &&
          sig_id == o.sig_id &&
          token == o.token
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [authen_result, bin_commercial, bin_debit, bin_description, eci, identifier, maskedpan, scheme, sig_id, token].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = CityPayApiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
