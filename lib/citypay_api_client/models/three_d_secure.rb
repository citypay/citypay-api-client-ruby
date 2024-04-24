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
  class ThreeDSecure
    # Required for 3DSv1. Optional if the `cp_bx` value is provided otherwise required for 3Dv2 processing operating in browser authentication mode.  The `cp_bx` value will override any value supplied to this field.  The content of the HTTP accept header as sent to the merchant from the cardholder's user agent.  This value will be validated by the ACS when the card holder authenticates themselves to verify that no intermediary is performing this action. Required for 3DSv1. 
    attr_accessor :accept_headers

    # BrowserColorDepth field used for 3DSv2 browser enablement. Recommendation is to use citypay.js and the `bx` function to gather this value.
    attr_accessor :browser_color_depth

    # BrowserIP field used for 3DSv2 browser enablement. Recommendation is to use citypay.js and the `bx` function to gather this value.
    attr_accessor :browser_ip

    # BrowserJavaEnabled field used for 3DSv2 browser enablement. Recommendation is to use citypay.js and the `bx` function to gather this value.
    attr_accessor :browser_java_enabled

    # BrowserLanguage field used for 3DSv2 browser enablement. Recommendation is to use citypay.js and the `bx` function to gather this value.
    attr_accessor :browser_language

    # BrowserScreenHeight field used for 3DSv2 browser enablement. Recommendation is to use citypay.js and the `bx` function to gather this value.
    attr_accessor :browser_screen_height

    # BrowserScreenWidth field used for 3DSv2 browser enablement. Recommendation is to use citypay.js and the `bx` function to gather this value.
    attr_accessor :browser_screen_width

    # BrowserTZ offset field used for 3DSv2 browser enablement. Recommendation is to use citypay.js and the `bx` function to gather this value.
    attr_accessor :browser_tz

    # Required for 3DSv2.  Browser extension value produced by the citypay.js `bx` function. See [https://sandbox.citypay.com/3dsv2/bx](https://sandbox.citypay.com/3dsv2/bx) for  details. 
    attr_accessor :cp_bx

    # Where a merchant is configured for 3DSv2, setting this option will attempt to downgrade the transaction to  3DSv1. 
    attr_accessor :downgrade1

    # A controller URL for 3D-Secure processing that any response from an authentication request or challenge request should be sent to.  The controller should forward on the response from the URL back via this API for subsequent processing. 
    attr_accessor :merchant_termurl

    # A policy value which determines whether ThreeDSecure is enforced or bypassed. Note that this will only work for e-commerce transactions and accounts that have 3DSecure enabled and fully registered with Visa, MasterCard or American Express. It is useful when transactions may be wanted to bypass processing rules.  Note that this may affect the liability shift of transactions and may occur a higher fee with the acquiring bank.  Values are   `0` for the default policy (default value if not supplied). Your default values are determined by your account manager on setup of the account.   `1` for an enforced policy. Transactions will be enabled for 3DS processing   `2` to bypass. Transactions that are bypassed will switch off 3DS processing. 
    attr_accessor :tds_policy

    # Required for 3DSv1.  Optional if the `cp_bx` value is provided otherwise required 3Dv2 processing operating in browser authentication mode.  The `cp_bx` value will override any value supplied to this field.  The content of the HTTP user-agent header as sent to the merchant from the cardholder's user agent.  This value will be validated by the ACS when the card holder authenticates themselves to verify that no intermediary is performing this action. Required for 3DSv1. 
    attr_accessor :user_agent

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'accept_headers' => :'accept_headers',
        :'browser_color_depth' => :'browserColorDepth',
        :'browser_ip' => :'browserIP',
        :'browser_java_enabled' => :'browserJavaEnabled',
        :'browser_language' => :'browserLanguage',
        :'browser_screen_height' => :'browserScreenHeight',
        :'browser_screen_width' => :'browserScreenWidth',
        :'browser_tz' => :'browserTZ',
        :'cp_bx' => :'cp_bx',
        :'downgrade1' => :'downgrade1',
        :'merchant_termurl' => :'merchant_termurl',
        :'tds_policy' => :'tds_policy',
        :'user_agent' => :'user_agent'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'accept_headers' => :'String',
        :'browser_color_depth' => :'String',
        :'browser_ip' => :'String',
        :'browser_java_enabled' => :'String',
        :'browser_language' => :'String',
        :'browser_screen_height' => :'String',
        :'browser_screen_width' => :'String',
        :'browser_tz' => :'String',
        :'cp_bx' => :'String',
        :'downgrade1' => :'Boolean',
        :'merchant_termurl' => :'String',
        :'tds_policy' => :'String',
        :'user_agent' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CityPayApiClient::ThreeDSecure` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CityPayApiClient::ThreeDSecure`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'accept_headers')
        self.accept_headers = attributes[:'accept_headers']
      end

      if attributes.key?(:'browser_color_depth')
        self.browser_color_depth = attributes[:'browser_color_depth']
      end

      if attributes.key?(:'browser_ip')
        self.browser_ip = attributes[:'browser_ip']
      end

      if attributes.key?(:'browser_java_enabled')
        self.browser_java_enabled = attributes[:'browser_java_enabled']
      end

      if attributes.key?(:'browser_language')
        self.browser_language = attributes[:'browser_language']
      end

      if attributes.key?(:'browser_screen_height')
        self.browser_screen_height = attributes[:'browser_screen_height']
      end

      if attributes.key?(:'browser_screen_width')
        self.browser_screen_width = attributes[:'browser_screen_width']
      end

      if attributes.key?(:'browser_tz')
        self.browser_tz = attributes[:'browser_tz']
      end

      if attributes.key?(:'cp_bx')
        self.cp_bx = attributes[:'cp_bx']
      end

      if attributes.key?(:'downgrade1')
        self.downgrade1 = attributes[:'downgrade1']
      end

      if attributes.key?(:'merchant_termurl')
        self.merchant_termurl = attributes[:'merchant_termurl']
      end

      if attributes.key?(:'tds_policy')
        self.tds_policy = attributes[:'tds_policy']
      end

      if attributes.key?(:'user_agent')
        self.user_agent = attributes[:'user_agent']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          accept_headers == o.accept_headers &&
          browser_color_depth == o.browser_color_depth &&
          browser_ip == o.browser_ip &&
          browser_java_enabled == o.browser_java_enabled &&
          browser_language == o.browser_language &&
          browser_screen_height == o.browser_screen_height &&
          browser_screen_width == o.browser_screen_width &&
          browser_tz == o.browser_tz &&
          cp_bx == o.cp_bx &&
          downgrade1 == o.downgrade1 &&
          merchant_termurl == o.merchant_termurl &&
          tds_policy == o.tds_policy &&
          user_agent == o.user_agent
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [accept_headers, browser_color_depth, browser_ip, browser_java_enabled, browser_language, browser_screen_height, browser_screen_width, browser_tz, cp_bx, downgrade1, merchant_termurl, tds_policy, user_agent].hash
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
