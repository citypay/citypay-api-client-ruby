=begin
#CityPay Payment API

# This CityPay API is an HTTP RESTful payment API used for direct server to server transactional processing. It provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing, 3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and Completion processing. The API is also capable of tokenized payments using cardholder Accounts.  ## Compliance and Security Your application will need to adhere to PCI-DSS standards to operate safely and to meet requirements set out by  Visa and MasterCard and the PCI Security Standards Council. These include  * Data must be collected using TLS version 1.2 using [strong cryptography](https://citypay.github.io/api-docs/payment-api/#enabled-tls-ciphers). We will not accept calls to our API at   lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments   as part of our compliance program. * The application must not store sensitive cardholder data (CHD) such as the card security code (CSC) or   primary access number (PAN) * The application must not display the full card number on receipts, it is recommended to mask the PAN   and show the last 4 digits. The API will return this for you for ease of receipt creation * If you are developing a website, you will be required to perform regular scans on the network where you host the   application to meet your compliance obligations * You will be required to be PCI Compliant and the application must adhere to the security standard. Further information   is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/) * The API verifies that the request is for a valid account and originates from a trusted source using the remote IP   address. Our application firewalls analyse data that may be an attempt to break a large number of security common   security vulnerabilities. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module CityPayApiClient
  class PaylinkTokenStatus
    # the amount that has been paid against the session.
    attr_accessor :amount_paid

    # an authorisation code if the transaction was processed and isPaid is true.
    attr_accessor :auth_code

    # a description of the card that was used for payment if paid.
    attr_accessor :card

    # the date and time that the session was created.
    attr_accessor :created

    # the date and time of the current status.
    attr_accessor :datetime

    # the merchant identifier, to help identifying the token.
    attr_accessor :identifier

    # true if an attachment exists.
    attr_accessor :is_attachment

    # true if the session was cancelled either by the user or by a system request.
    attr_accessor :is_cancelled

    # true if the token has been closed.
    attr_accessor :is_closed

    # true if a customer receipt has been sent.
    attr_accessor :is_customer_receipt_email_sent

    # true if an email was sent.
    attr_accessor :is_email_sent

    # true if the session has expired.
    attr_accessor :is_expired

    # true if the form was ever displayed to the addressee.
    attr_accessor :is_form_viewed

    # true if a merchant notification receipt was sent.
    attr_accessor :is_merchant_notification_email_sent

    # true if the session is still open for payment or false if it has been closed.
    attr_accessor :is_open_for_payment

    # whether the session has been paid and therefore can be considered as complete.
    attr_accessor :is_paid

    # true if payment has been attempted.
    attr_accessor :is_payment_attempted

    # true if a post back was executed successfully.
    attr_accessor :is_postback_ok

    # true if the request has been challenged using 3-D Secure.
    attr_accessor :is_request_challenged

    # true if an SMS was sent.
    attr_accessor :is_sms_sent

    # whether the token generation was successfully validated.
    attr_accessor :is_validated

    # the date and time that the session last had an event actioned against it.
    attr_accessor :last_event_date_time

    # the result of the last payment if one exists.
    attr_accessor :last_payment_result

    # identifies the merchant account.
    attr_accessor :mid

    # the number of attempts made to pay.
    attr_accessor :payment_attempts_count

    attr_accessor :state_history

    # the token value which uniquely identifies the session.
    attr_accessor :token

    # a transaction number if the transacstion was processed and isPaid is true.
    attr_accessor :trans_no

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount_paid' => :'amount_paid',
        :'auth_code' => :'auth_code',
        :'card' => :'card',
        :'created' => :'created',
        :'datetime' => :'datetime',
        :'identifier' => :'identifier',
        :'is_attachment' => :'is_attachment',
        :'is_cancelled' => :'is_cancelled',
        :'is_closed' => :'is_closed',
        :'is_customer_receipt_email_sent' => :'is_customer_receipt_email_sent',
        :'is_email_sent' => :'is_email_sent',
        :'is_expired' => :'is_expired',
        :'is_form_viewed' => :'is_form_viewed',
        :'is_merchant_notification_email_sent' => :'is_merchant_notification_email_sent',
        :'is_open_for_payment' => :'is_open_for_payment',
        :'is_paid' => :'is_paid',
        :'is_payment_attempted' => :'is_payment_attempted',
        :'is_postback_ok' => :'is_postback_ok',
        :'is_request_challenged' => :'is_request_challenged',
        :'is_sms_sent' => :'is_sms_sent',
        :'is_validated' => :'is_validated',
        :'last_event_date_time' => :'last_event_date_time',
        :'last_payment_result' => :'last_payment_result',
        :'mid' => :'mid',
        :'payment_attempts_count' => :'payment_attempts_count',
        :'state_history' => :'state_history',
        :'token' => :'token',
        :'trans_no' => :'trans_no'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount_paid' => :'Integer',
        :'auth_code' => :'String',
        :'card' => :'String',
        :'created' => :'Time',
        :'datetime' => :'Time',
        :'identifier' => :'String',
        :'is_attachment' => :'Boolean',
        :'is_cancelled' => :'Boolean',
        :'is_closed' => :'Boolean',
        :'is_customer_receipt_email_sent' => :'Boolean',
        :'is_email_sent' => :'Boolean',
        :'is_expired' => :'Boolean',
        :'is_form_viewed' => :'Boolean',
        :'is_merchant_notification_email_sent' => :'Boolean',
        :'is_open_for_payment' => :'Boolean',
        :'is_paid' => :'Boolean',
        :'is_payment_attempted' => :'Boolean',
        :'is_postback_ok' => :'Boolean',
        :'is_request_challenged' => :'Boolean',
        :'is_sms_sent' => :'Boolean',
        :'is_validated' => :'Boolean',
        :'last_event_date_time' => :'Time',
        :'last_payment_result' => :'String',
        :'mid' => :'String',
        :'payment_attempts_count' => :'Integer',
        :'state_history' => :'Array<PaylinkStateEvent>',
        :'token' => :'String',
        :'trans_no' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CityPayApiClient::PaylinkTokenStatus` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CityPayApiClient::PaylinkTokenStatus`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount_paid')
        self.amount_paid = attributes[:'amount_paid']
      end

      if attributes.key?(:'auth_code')
        self.auth_code = attributes[:'auth_code']
      end

      if attributes.key?(:'card')
        self.card = attributes[:'card']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'datetime')
        self.datetime = attributes[:'datetime']
      end

      if attributes.key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.key?(:'is_attachment')
        self.is_attachment = attributes[:'is_attachment']
      end

      if attributes.key?(:'is_cancelled')
        self.is_cancelled = attributes[:'is_cancelled']
      end

      if attributes.key?(:'is_closed')
        self.is_closed = attributes[:'is_closed']
      end

      if attributes.key?(:'is_customer_receipt_email_sent')
        self.is_customer_receipt_email_sent = attributes[:'is_customer_receipt_email_sent']
      end

      if attributes.key?(:'is_email_sent')
        self.is_email_sent = attributes[:'is_email_sent']
      end

      if attributes.key?(:'is_expired')
        self.is_expired = attributes[:'is_expired']
      end

      if attributes.key?(:'is_form_viewed')
        self.is_form_viewed = attributes[:'is_form_viewed']
      end

      if attributes.key?(:'is_merchant_notification_email_sent')
        self.is_merchant_notification_email_sent = attributes[:'is_merchant_notification_email_sent']
      end

      if attributes.key?(:'is_open_for_payment')
        self.is_open_for_payment = attributes[:'is_open_for_payment']
      end

      if attributes.key?(:'is_paid')
        self.is_paid = attributes[:'is_paid']
      end

      if attributes.key?(:'is_payment_attempted')
        self.is_payment_attempted = attributes[:'is_payment_attempted']
      end

      if attributes.key?(:'is_postback_ok')
        self.is_postback_ok = attributes[:'is_postback_ok']
      end

      if attributes.key?(:'is_request_challenged')
        self.is_request_challenged = attributes[:'is_request_challenged']
      end

      if attributes.key?(:'is_sms_sent')
        self.is_sms_sent = attributes[:'is_sms_sent']
      end

      if attributes.key?(:'is_validated')
        self.is_validated = attributes[:'is_validated']
      end

      if attributes.key?(:'last_event_date_time')
        self.last_event_date_time = attributes[:'last_event_date_time']
      end

      if attributes.key?(:'last_payment_result')
        self.last_payment_result = attributes[:'last_payment_result']
      end

      if attributes.key?(:'mid')
        self.mid = attributes[:'mid']
      end

      if attributes.key?(:'payment_attempts_count')
        self.payment_attempts_count = attributes[:'payment_attempts_count']
      end

      if attributes.key?(:'state_history')
        if (value = attributes[:'state_history']).is_a?(Array)
          self.state_history = value
        end
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'trans_no')
        self.trans_no = attributes[:'trans_no']
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
          amount_paid == o.amount_paid &&
          auth_code == o.auth_code &&
          card == o.card &&
          created == o.created &&
          datetime == o.datetime &&
          identifier == o.identifier &&
          is_attachment == o.is_attachment &&
          is_cancelled == o.is_cancelled &&
          is_closed == o.is_closed &&
          is_customer_receipt_email_sent == o.is_customer_receipt_email_sent &&
          is_email_sent == o.is_email_sent &&
          is_expired == o.is_expired &&
          is_form_viewed == o.is_form_viewed &&
          is_merchant_notification_email_sent == o.is_merchant_notification_email_sent &&
          is_open_for_payment == o.is_open_for_payment &&
          is_paid == o.is_paid &&
          is_payment_attempted == o.is_payment_attempted &&
          is_postback_ok == o.is_postback_ok &&
          is_request_challenged == o.is_request_challenged &&
          is_sms_sent == o.is_sms_sent &&
          is_validated == o.is_validated &&
          last_event_date_time == o.last_event_date_time &&
          last_payment_result == o.last_payment_result &&
          mid == o.mid &&
          payment_attempts_count == o.payment_attempts_count &&
          state_history == o.state_history &&
          token == o.token &&
          trans_no == o.trans_no
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount_paid, auth_code, card, created, datetime, identifier, is_attachment, is_cancelled, is_closed, is_customer_receipt_email_sent, is_email_sent, is_expired, is_form_viewed, is_merchant_notification_email_sent, is_open_for_payment, is_paid, is_payment_attempted, is_postback_ok, is_request_challenged, is_sms_sent, is_validated, last_event_date_time, last_payment_result, mid, payment_attempts_count, state_history, token, trans_no].hash
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
