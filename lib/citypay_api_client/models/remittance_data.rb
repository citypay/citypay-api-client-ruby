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
  class RemittanceData
    # Represents the date and time when the remittance was processed. This timestamp follows the ISO 8601 format for datetime representation.
    attr_accessor :date_created

    # Represents the net amount after accounting for refunds. This is calculated as SalesAmount - RefundAmount and expressed in the smallest currency unit.
    attr_accessor :net_amount

    # The total amount refunded to customers.
    attr_accessor :refund_amount

    # The total number of refund transactions processed. This figure helps in understanding the frequency of refunds relative to sales.
    attr_accessor :refund_count

    # The total monetary amount of sales transactions.
    attr_accessor :sales_amount

    # Indicates the total number of sales transactions that occurred. This count provides insight into the volume of sales.
    attr_accessor :sales_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date_created' => :'date_created',
        :'net_amount' => :'net_amount',
        :'refund_amount' => :'refund_amount',
        :'refund_count' => :'refund_count',
        :'sales_amount' => :'sales_amount',
        :'sales_count' => :'sales_count'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'date_created' => :'Time',
        :'net_amount' => :'Integer',
        :'refund_amount' => :'Integer',
        :'refund_count' => :'Integer',
        :'sales_amount' => :'Integer',
        :'sales_count' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CityPayApiClient::RemittanceData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CityPayApiClient::RemittanceData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date_created')
        self.date_created = attributes[:'date_created']
      end

      if attributes.key?(:'net_amount')
        self.net_amount = attributes[:'net_amount']
      end

      if attributes.key?(:'refund_amount')
        self.refund_amount = attributes[:'refund_amount']
      end

      if attributes.key?(:'refund_count')
        self.refund_count = attributes[:'refund_count']
      end

      if attributes.key?(:'sales_amount')
        self.sales_amount = attributes[:'sales_amount']
      end

      if attributes.key?(:'sales_count')
        self.sales_count = attributes[:'sales_count']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@net_amount.nil? && @net_amount > 999999999
        invalid_properties.push('invalid value for "net_amount", must be smaller than or equal to 999999999.')
      end

      if !@net_amount.nil? && @net_amount < 0
        invalid_properties.push('invalid value for "net_amount", must be greater than or equal to 0.')
      end

      if !@refund_amount.nil? && @refund_amount > 999999999
        invalid_properties.push('invalid value for "refund_amount", must be smaller than or equal to 999999999.')
      end

      if !@refund_amount.nil? && @refund_amount < 0
        invalid_properties.push('invalid value for "refund_amount", must be greater than or equal to 0.')
      end

      if !@refund_count.nil? && @refund_count > 999999999
        invalid_properties.push('invalid value for "refund_count", must be smaller than or equal to 999999999.')
      end

      if !@refund_count.nil? && @refund_count < 0
        invalid_properties.push('invalid value for "refund_count", must be greater than or equal to 0.')
      end

      if !@sales_amount.nil? && @sales_amount > 999999999
        invalid_properties.push('invalid value for "sales_amount", must be smaller than or equal to 999999999.')
      end

      if !@sales_amount.nil? && @sales_amount < 0
        invalid_properties.push('invalid value for "sales_amount", must be greater than or equal to 0.')
      end

      if !@sales_count.nil? && @sales_count > 999999999
        invalid_properties.push('invalid value for "sales_count", must be smaller than or equal to 999999999.')
      end

      if !@sales_count.nil? && @sales_count < 0
        invalid_properties.push('invalid value for "sales_count", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@net_amount.nil? && @net_amount > 999999999
      return false if !@net_amount.nil? && @net_amount < 0
      return false if !@refund_amount.nil? && @refund_amount > 999999999
      return false if !@refund_amount.nil? && @refund_amount < 0
      return false if !@refund_count.nil? && @refund_count > 999999999
      return false if !@refund_count.nil? && @refund_count < 0
      return false if !@sales_amount.nil? && @sales_amount > 999999999
      return false if !@sales_amount.nil? && @sales_amount < 0
      return false if !@sales_count.nil? && @sales_count > 999999999
      return false if !@sales_count.nil? && @sales_count < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] net_amount Value to be assigned
    def net_amount=(net_amount)
      if net_amount.nil?
        fail ArgumentError, 'net_amount cannot be nil'
      end

      if net_amount > 999999999
        fail ArgumentError, 'invalid value for "net_amount", must be smaller than or equal to 999999999.'
      end

      if net_amount < 0
        fail ArgumentError, 'invalid value for "net_amount", must be greater than or equal to 0.'
      end

      @net_amount = net_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] refund_amount Value to be assigned
    def refund_amount=(refund_amount)
      if refund_amount.nil?
        fail ArgumentError, 'refund_amount cannot be nil'
      end

      if refund_amount > 999999999
        fail ArgumentError, 'invalid value for "refund_amount", must be smaller than or equal to 999999999.'
      end

      if refund_amount < 0
        fail ArgumentError, 'invalid value for "refund_amount", must be greater than or equal to 0.'
      end

      @refund_amount = refund_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] refund_count Value to be assigned
    def refund_count=(refund_count)
      if refund_count.nil?
        fail ArgumentError, 'refund_count cannot be nil'
      end

      if refund_count > 999999999
        fail ArgumentError, 'invalid value for "refund_count", must be smaller than or equal to 999999999.'
      end

      if refund_count < 0
        fail ArgumentError, 'invalid value for "refund_count", must be greater than or equal to 0.'
      end

      @refund_count = refund_count
    end

    # Custom attribute writer method with validation
    # @param [Object] sales_amount Value to be assigned
    def sales_amount=(sales_amount)
      if sales_amount.nil?
        fail ArgumentError, 'sales_amount cannot be nil'
      end

      if sales_amount > 999999999
        fail ArgumentError, 'invalid value for "sales_amount", must be smaller than or equal to 999999999.'
      end

      if sales_amount < 0
        fail ArgumentError, 'invalid value for "sales_amount", must be greater than or equal to 0.'
      end

      @sales_amount = sales_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] sales_count Value to be assigned
    def sales_count=(sales_count)
      if sales_count.nil?
        fail ArgumentError, 'sales_count cannot be nil'
      end

      if sales_count > 999999999
        fail ArgumentError, 'invalid value for "sales_count", must be smaller than or equal to 999999999.'
      end

      if sales_count < 0
        fail ArgumentError, 'invalid value for "sales_count", must be greater than or equal to 0.'
      end

      @sales_count = sales_count
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date_created == o.date_created &&
          net_amount == o.net_amount &&
          refund_amount == o.refund_amount &&
          refund_count == o.refund_count &&
          sales_amount == o.sales_amount &&
          sales_count == o.sales_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date_created, net_amount, refund_amount, refund_count, sales_amount, sales_count].hash
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
