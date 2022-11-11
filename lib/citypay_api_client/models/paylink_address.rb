=begin
#CityPay Payment API

# This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing, 3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.  ## Compliance and Security Your application will need to adhere to PCI-DSS standards to operate safely and to meet requirements set out by  Visa and MasterCard and the PCI Security Standards Council. These include  * Data must be collected using TLS version 1.2 using [strong cryptography](#enabled-tls-ciphers). We will not accept calls to our API at   lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments   as part of our compliance program. * The application must not store sensitive card holder data (CHD) such as the card security code (CSC) or   primary access number (PAN) * The application must not display the full card number on receipts, it is recommended to mask the PAN   and show the last 4 digits. The API will return this for you for ease of receipt creation * If you are developing a website, you will be required to perform regular scans on the network where you host the   application to meet your compliance obligations * You will be required to be PCI Compliant and the application must adhere to the security standard. Further information   is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/) * The API verifies that the request is for a valid account and originates from a trusted source using the remote IP   address. Our application firewalls analyse data that may be an attempt to break a large number of security common   security vulnerabilities. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0-SNAPSHOT

=end

require 'date'
require 'time'

module CityPayApiClient
  class PaylinkAddress
    # The first line of the address.
    attr_accessor :address1

    # The second line of the address.
    attr_accessor :address2

    # The third line of the address.
    attr_accessor :address3

    # The area such as city, department, town or parish.
    attr_accessor :area

    # The country code in ISO 3166 format. The country code should be an ISO-3166 2 or 3 digit country code.
    attr_accessor :country

    # A label for the address such as Head Office, Home Address.
    attr_accessor :label

    # The postcode or zip code of the address.
    attr_accessor :postcode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'address3' => :'address3',
        :'area' => :'area',
        :'country' => :'country',
        :'label' => :'label',
        :'postcode' => :'postcode'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'address1' => :'String',
        :'address2' => :'String',
        :'address3' => :'String',
        :'area' => :'String',
        :'country' => :'String',
        :'label' => :'String',
        :'postcode' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CityPayApiClient::PaylinkAddress` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CityPayApiClient::PaylinkAddress`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.key?(:'address3')
        self.address3 = attributes[:'address3']
      end

      if attributes.key?(:'area')
        self.area = attributes[:'area']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'postcode')
        self.postcode = attributes[:'postcode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@address1.nil? && @address1.to_s.length > 50
        invalid_properties.push('invalid value for "address1", the character length must be smaller than or equal to 50.')
      end

      if !@address2.nil? && @address2.to_s.length > 50
        invalid_properties.push('invalid value for "address2", the character length must be smaller than or equal to 50.')
      end

      if !@address3.nil? && @address3.to_s.length > 50
        invalid_properties.push('invalid value for "address3", the character length must be smaller than or equal to 50.')
      end

      if !@area.nil? && @area.to_s.length > 50
        invalid_properties.push('invalid value for "area", the character length must be smaller than or equal to 50.')
      end

      if !@country.nil? && @country.to_s.length > 2
        invalid_properties.push('invalid value for "country", the character length must be smaller than or equal to 2.')
      end

      if !@country.nil? && @country.to_s.length < 2
        invalid_properties.push('invalid value for "country", the character length must be great than or equal to 2.')
      end

      if !@label.nil? && @label.to_s.length > 20
        invalid_properties.push('invalid value for "label", the character length must be smaller than or equal to 20.')
      end

      if !@label.nil? && @label.to_s.length < 2
        invalid_properties.push('invalid value for "label", the character length must be great than or equal to 2.')
      end

      if !@postcode.nil? && @postcode.to_s.length > 16
        invalid_properties.push('invalid value for "postcode", the character length must be smaller than or equal to 16.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@address1.nil? && @address1.to_s.length > 50
      return false if !@address2.nil? && @address2.to_s.length > 50
      return false if !@address3.nil? && @address3.to_s.length > 50
      return false if !@area.nil? && @area.to_s.length > 50
      return false if !@country.nil? && @country.to_s.length > 2
      return false if !@country.nil? && @country.to_s.length < 2
      return false if !@label.nil? && @label.to_s.length > 20
      return false if !@label.nil? && @label.to_s.length < 2
      return false if !@postcode.nil? && @postcode.to_s.length > 16
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] address1 Value to be assigned
    def address1=(address1)
      if !address1.nil? && address1.to_s.length > 50
        fail ArgumentError, 'invalid value for "address1", the character length must be smaller than or equal to 50.'
      end

      @address1 = address1
    end

    # Custom attribute writer method with validation
    # @param [Object] address2 Value to be assigned
    def address2=(address2)
      if !address2.nil? && address2.to_s.length > 50
        fail ArgumentError, 'invalid value for "address2", the character length must be smaller than or equal to 50.'
      end

      @address2 = address2
    end

    # Custom attribute writer method with validation
    # @param [Object] address3 Value to be assigned
    def address3=(address3)
      if !address3.nil? && address3.to_s.length > 50
        fail ArgumentError, 'invalid value for "address3", the character length must be smaller than or equal to 50.'
      end

      @address3 = address3
    end

    # Custom attribute writer method with validation
    # @param [Object] area Value to be assigned
    def area=(area)
      if !area.nil? && area.to_s.length > 50
        fail ArgumentError, 'invalid value for "area", the character length must be smaller than or equal to 50.'
      end

      @area = area
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if !country.nil? && country.to_s.length > 2
        fail ArgumentError, 'invalid value for "country", the character length must be smaller than or equal to 2.'
      end

      if !country.nil? && country.to_s.length < 2
        fail ArgumentError, 'invalid value for "country", the character length must be great than or equal to 2.'
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] label Value to be assigned
    def label=(label)
      if !label.nil? && label.to_s.length > 20
        fail ArgumentError, 'invalid value for "label", the character length must be smaller than or equal to 20.'
      end

      if !label.nil? && label.to_s.length < 2
        fail ArgumentError, 'invalid value for "label", the character length must be great than or equal to 2.'
      end

      @label = label
    end

    # Custom attribute writer method with validation
    # @param [Object] postcode Value to be assigned
    def postcode=(postcode)
      if !postcode.nil? && postcode.to_s.length > 16
        fail ArgumentError, 'invalid value for "postcode", the character length must be smaller than or equal to 16.'
      end

      @postcode = postcode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          address3 == o.address3 &&
          area == o.area &&
          country == o.country &&
          label == o.label &&
          postcode == o.postcode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address1, address2, address3, area, country, label, postcode].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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