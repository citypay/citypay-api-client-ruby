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
  class AirlineSegment
    # A standard airline routing code (airport code or location identifier) applicable to the arrival portion of this segment. 
    attr_accessor :arrival_location_code

    # This field contains the two character airline designator code (air carrier code or airline code) that corresponds to the airline carrier applicable for up to four flight segments of this trip itinerary. 
    attr_accessor :carrier_code

    # This field contains a code that corresponds to the fare class (A, B, C, D, Premium, Discounted, etc.) within the overall class of service (e.g., First Class, Business, Economy) applicable to this travel segment, as specified in the IATA Standard Code allocation table. 
    attr_accessor :class_service_code

    # The Departure Date for the travel segment in ISO Date Format (yyyy-MM-dd).
    attr_accessor :departure_date

    # A standard airline routing code (airport code or location identifier) applicable to the departure portion of this segment. 
    attr_accessor :departure_location_code

    # This field contains the carrier-assigned Flight Number for this travel segment.
    attr_accessor :flight_number

    # This field contains the total Fare for this travel segment.
    attr_accessor :segment_fare

    # O = Stopover allowed, X = Stopover not allowed.
    attr_accessor :stop_over_indicator

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'arrival_location_code' => :'arrival_location_code',
        :'carrier_code' => :'carrier_code',
        :'class_service_code' => :'class_service_code',
        :'departure_date' => :'departure_date',
        :'departure_location_code' => :'departure_location_code',
        :'flight_number' => :'flight_number',
        :'segment_fare' => :'segment_fare',
        :'stop_over_indicator' => :'stop_over_indicator'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'arrival_location_code' => :'String',
        :'carrier_code' => :'String',
        :'class_service_code' => :'String',
        :'departure_date' => :'Date',
        :'departure_location_code' => :'String',
        :'flight_number' => :'String',
        :'segment_fare' => :'Integer',
        :'stop_over_indicator' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CityPayApiClient::AirlineSegment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CityPayApiClient::AirlineSegment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'arrival_location_code')
        self.arrival_location_code = attributes[:'arrival_location_code']
      end

      if attributes.key?(:'carrier_code')
        self.carrier_code = attributes[:'carrier_code']
      end

      if attributes.key?(:'class_service_code')
        self.class_service_code = attributes[:'class_service_code']
      end

      if attributes.key?(:'departure_date')
        self.departure_date = attributes[:'departure_date']
      end

      if attributes.key?(:'departure_location_code')
        self.departure_location_code = attributes[:'departure_location_code']
      end

      if attributes.key?(:'flight_number')
        self.flight_number = attributes[:'flight_number']
      end

      if attributes.key?(:'segment_fare')
        self.segment_fare = attributes[:'segment_fare']
      end

      if attributes.key?(:'stop_over_indicator')
        self.stop_over_indicator = attributes[:'stop_over_indicator']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @arrival_location_code.nil?
        invalid_properties.push('invalid value for "arrival_location_code", arrival_location_code cannot be nil.')
      end

      if @arrival_location_code.to_s.length > 3
        invalid_properties.push('invalid value for "arrival_location_code", the character length must be smaller than or equal to 3.')
      end

      if @carrier_code.nil?
        invalid_properties.push('invalid value for "carrier_code", carrier_code cannot be nil.')
      end

      if @carrier_code.to_s.length > 2
        invalid_properties.push('invalid value for "carrier_code", the character length must be smaller than or equal to 2.')
      end

      if @class_service_code.nil?
        invalid_properties.push('invalid value for "class_service_code", class_service_code cannot be nil.')
      end

      if @class_service_code.to_s.length > 2
        invalid_properties.push('invalid value for "class_service_code", the character length must be smaller than or equal to 2.')
      end

      if @departure_date.nil?
        invalid_properties.push('invalid value for "departure_date", departure_date cannot be nil.')
      end

      if !@departure_location_code.nil? && @departure_location_code.to_s.length > 3
        invalid_properties.push('invalid value for "departure_location_code", the character length must be smaller than or equal to 3.')
      end

      if @flight_number.nil?
        invalid_properties.push('invalid value for "flight_number", flight_number cannot be nil.')
      end

      if @flight_number.to_s.length > 4
        invalid_properties.push('invalid value for "flight_number", the character length must be smaller than or equal to 4.')
      end

      if !@stop_over_indicator.nil? && @stop_over_indicator.to_s.length > 1
        invalid_properties.push('invalid value for "stop_over_indicator", the character length must be smaller than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @arrival_location_code.nil?
      return false if @arrival_location_code.to_s.length > 3
      return false if @carrier_code.nil?
      return false if @carrier_code.to_s.length > 2
      return false if @class_service_code.nil?
      return false if @class_service_code.to_s.length > 2
      return false if @departure_date.nil?
      return false if !@departure_location_code.nil? && @departure_location_code.to_s.length > 3
      return false if @flight_number.nil?
      return false if @flight_number.to_s.length > 4
      return false if !@stop_over_indicator.nil? && @stop_over_indicator.to_s.length > 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] arrival_location_code Value to be assigned
    def arrival_location_code=(arrival_location_code)
      if arrival_location_code.nil?
        fail ArgumentError, 'arrival_location_code cannot be nil'
      end

      if arrival_location_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "arrival_location_code", the character length must be smaller than or equal to 3.'
      end

      @arrival_location_code = arrival_location_code
    end

    # Custom attribute writer method with validation
    # @param [Object] carrier_code Value to be assigned
    def carrier_code=(carrier_code)
      if carrier_code.nil?
        fail ArgumentError, 'carrier_code cannot be nil'
      end

      if carrier_code.to_s.length > 2
        fail ArgumentError, 'invalid value for "carrier_code", the character length must be smaller than or equal to 2.'
      end

      @carrier_code = carrier_code
    end

    # Custom attribute writer method with validation
    # @param [Object] class_service_code Value to be assigned
    def class_service_code=(class_service_code)
      if class_service_code.nil?
        fail ArgumentError, 'class_service_code cannot be nil'
      end

      if class_service_code.to_s.length > 2
        fail ArgumentError, 'invalid value for "class_service_code", the character length must be smaller than or equal to 2.'
      end

      @class_service_code = class_service_code
    end

    # Custom attribute writer method with validation
    # @param [Object] departure_location_code Value to be assigned
    def departure_location_code=(departure_location_code)
      if !departure_location_code.nil? && departure_location_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "departure_location_code", the character length must be smaller than or equal to 3.'
      end

      @departure_location_code = departure_location_code
    end

    # Custom attribute writer method with validation
    # @param [Object] flight_number Value to be assigned
    def flight_number=(flight_number)
      if flight_number.nil?
        fail ArgumentError, 'flight_number cannot be nil'
      end

      if flight_number.to_s.length > 4
        fail ArgumentError, 'invalid value for "flight_number", the character length must be smaller than or equal to 4.'
      end

      @flight_number = flight_number
    end

    # Custom attribute writer method with validation
    # @param [Object] stop_over_indicator Value to be assigned
    def stop_over_indicator=(stop_over_indicator)
      if !stop_over_indicator.nil? && stop_over_indicator.to_s.length > 1
        fail ArgumentError, 'invalid value for "stop_over_indicator", the character length must be smaller than or equal to 1.'
      end

      @stop_over_indicator = stop_over_indicator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          arrival_location_code == o.arrival_location_code &&
          carrier_code == o.carrier_code &&
          class_service_code == o.class_service_code &&
          departure_date == o.departure_date &&
          departure_location_code == o.departure_location_code &&
          flight_number == o.flight_number &&
          segment_fare == o.segment_fare &&
          stop_over_indicator == o.stop_over_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [arrival_location_code, carrier_code, class_service_code, departure_date, departure_location_code, flight_number, segment_fare, stop_over_indicator].hash
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
