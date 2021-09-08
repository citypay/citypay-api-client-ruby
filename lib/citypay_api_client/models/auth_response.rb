=begin
#CityPay Payment API

# This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing, 3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.  ## Compliance and Security <aside class=\"notice\">   Before we begin a reminder that your application will need to adhere to PCI-DSS standards to operate safely   and to meet requirements set out by Visa and MasterCard and the PCI Security Standards Council including: </aside>  * Data must be collected using TLS version 1.2 using [strong cryptography](#enabled-tls-ciphers). We will not accept calls to our API at   lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments   as part of our compliance program. * The application must not store sensitive card holder data (CHD) such as the card security code (CSC) or   primary access number (PAN) * The application must not display the full card number on receipts, it is recommended to mask the PAN   and show the last 4 digits. The API will return this for you for ease of receipt creation * If you are developing a website, you will be required to perform regular scans on the network where you host the   application to meet your compliance obligations * You will be required to be PCI Compliant and the application must adhere to the security standard. Further information   is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/) * The API verifies that the request is for a valid account and originates from a trusted source using the remote IP   address. Our application firewalls analyse data that may be an attempt to break a large number of security common   security vulnerabilities. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0-SNAPSHOT

=end

require 'date'
require 'time'

module CityPayApiClient
  class AuthResponse
    # The amount of the transaction processed.
    attr_accessor :amount

    # A reference number provided by the acquirer for a transaction it can be used to cross reference transactions with an Acquirers reporting panel. 
    attr_accessor :atrn

    # Additional Transaction Security Data used for ecommerce transactions to decipher security capabilities and attempts against a transaction.
    attr_accessor :atsd

    # The authorisation code as returned by the card issuer or acquiring bank when a transaction has successfully   been authorised. Authorisation codes contain alphanumeric values. Whilst the code confirms authorisation it   should not be used to determine whether a transaction was successfully processed. For instance an auth code   may be returned when a transaction has been subsequently declined due to a CSC mismatch. 
    attr_accessor :authcode

    # The result of any authentication using 3d_secure authorisation against ecommerce transactions. Values are:  <table> <tr> <th>Value</th> <th>Description</th> </tr> <tr> <td>Y</td> <td>Authentication Successful. The Cardholder's password was successfully validated.</td> </tr> <tr> <td>N</td> <td>Authentication Failed. Customer failed or cancelled authentication, transaction denied.</td> </tr> <tr> <td>A</td> <td>Attempts Processing Performed Authentication could not be completed but a proof of authentication attempt (CAVV) was generated.</td> </tr> <tr> <td>U</td> <td>Authentication Could Not Be Performed Authentication could not be completed, due to technical or other problem.</td> </tr> </table> 
    attr_accessor :authen_result

    # A boolean definition that indicates that the transaction was authorised. It will return false if the transaction  was declined, rejected or cancelled due to CSC matching failures.  Attention should be referenced to the AuthResult and Response code for accurate determination of the result. 
    attr_accessor :authorised

    # The AVS result codes determine the result of checking the AVS values within the Address Verification fraud system. If a transaction is declined due to the AVS code not matching, this value can help determine the reason for the decline.  <table> <tr> <th>Code</th> <th>Description</th> </tr> <tr><td>Y</td><td>Address and 5 digit post code match</td></tr> <tr><td>M</td><td>Street address and Postal codes match for international transaction</td></tr> <tr><td>U</td><td>No AVS data available from issuer auth system</td></tr> <tr><td>A</td><td>Addres matches, post code does not</td></tr> <tr><td>I</td><td>Address information verified for international transaction</td></tr> <tr><td>Z</td><td>5 digit post code matches, Address does not</td></tr> <tr><td>W</td><td>9 digit post code matches, Address does not</td></tr> <tr><td>X</td><td>Postcode and address match</td></tr> <tr><td>B</td><td>Postal code not verified due to incompatible formats</td></tr> <tr><td>P</td><td>Postal codes match. Street address not verified due to to incompatible formats</td></tr> <tr><td>E</td><td>AVS Error</td></tr> <tr><td>C</td><td>Street address and Postal code not verified due to incompatible formats</td></tr> <tr><td>D</td><td>Street address and postal codes match</td></tr> <tr><td> </td><td>No information</td></tr> <tr><td>N</td><td>Neither postcode nor address match</td></tr> <tr><td>R</td><td>Retry, System unavailble or Timed Out</td></tr> <tr><td>S</td><td>AVS Service not supported by issuer or processor</td></tr> <tr><td>G</td><td>Issuer does not participate in AVS</td></tr> </table> 
    attr_accessor :avs_result

    # Determines whether the bin range was found to be a commercial or business card.
    attr_accessor :bin_commercial

    # Determines whether the bin range was found to be a debit card. If false the card was considered as a credit card.
    attr_accessor :bin_debit

    # A description of the bin range found for the card.
    attr_accessor :bin_description

    # The cardholder authentication verification value which can be returned for verification purposes of the authenticated  transaction for dispute realisation. 
    attr_accessor :cavv

    # The context which processed the transaction, can be used for support purposes to trace transactions.
    attr_accessor :context

    # The CSC rseult codes determine the result of checking the provided CSC value within the Card Security Code fraud system. If a transaction is declined due to the CSC code not matching, this value can help determine the reason for the decline.  <table> <tr> <th>Code</th> <th>Description</th> </tr> <tr><td> </td><td>No information</td></tr> <tr><td>M</td><td>Card verification data matches</td></tr> <tr><td>N</td><td>Card verification data was checked but did not match</td></tr> <tr><td>P</td><td>Card verification was not processed</td></tr> <tr><td>S</td><td>The card verification data should be on the card but the merchant indicates that it is not</td></tr> <tr><td>U</td><td>The card issuer is not certified</td></tr> </table> 
    attr_accessor :csc_result

    # The currency the transaction was processed in. This is an `ISO4217` alpha currency value.
    attr_accessor :currency

    # The UTC date time of the transaction in ISO data time format. 
    attr_accessor :datetime

    # An Electronic Commerce Indicator (ECI) used to identify the result of authentication using 3DSecure. 
    attr_accessor :eci

    # The identifier provided within the request.
    attr_accessor :identifier

    # Used to identify that a transaction was processed on a live authorisation platform.
    attr_accessor :live

    # A masked value of the card number used for processing displaying limited values that can be used on a receipt. 
    attr_accessor :maskedpan

    # The merchant id that processed this transaction.
    attr_accessor :merchantid

    # An integer result that indicates the outcome of the transaction. The Code value below maps to the result value  <table> <tr> <th>Code</th> <th>Abbrev</th> <th>Description</th> </tr> <tr><td>0</td><td>Declined</td><td>Declined</td></tr> <tr><td>1</td><td>Accepted</td><td>Accepted</td></tr> <tr><td>2</td><td>Rejected</td><td>Rejected</td></tr> <tr><td>3</td><td>Not Attempted</td><td>Not Attempted</td></tr> <tr><td>4</td><td>Referred</td><td>Referred</td></tr> <tr><td>5</td><td>PinRetry</td><td>Perform PIN Retry</td></tr> <tr><td>6</td><td>ForSigVer</td><td>Force Signature Verification</td></tr> <tr><td>7</td><td>Hold</td><td>Hold</td></tr> <tr><td>8</td><td>SecErr</td><td>Security Error</td></tr> <tr><td>9</td><td>CallAcq</td><td>Call Acquirer</td></tr> <tr><td>10</td><td>DNH</td><td>Do Not Honour</td></tr> <tr><td>11</td><td>RtnCrd</td><td>Retain Card</td></tr> <tr><td>12</td><td>ExprdCrd</td><td>Expired Card</td></tr> <tr><td>13</td><td>InvldCrd</td><td>Invalid Card No</td></tr> <tr><td>14</td><td>PinExcd</td><td>Pin Tries Exceeded</td></tr> <tr><td>15</td><td>PinInvld</td><td>Pin Invalid</td></tr> <tr><td>16</td><td>AuthReq</td><td>Authentication Required</td></tr> <tr><td>17</td><td>AuthenFail</td><td>Authentication Failed</td></tr> <tr><td>18</td><td>Verified</td><td>Card Verified</td></tr> <tr><td>19</td><td>Cancelled</td><td>Cancelled</td></tr> <tr><td>20</td><td>Un</td><td>Unknown</td></tr> </table> 
    attr_accessor :result

    # The result code as defined in the Response Codes Reference for example 000 is an accepted live transaction whilst 001 is an accepted test transaction. Result codes identify the source of success and failure.  Codes may start with an alpha character i.e. C001 indicating a type of error such as a card validation error. 
    attr_accessor :result_code

    # The message regarding the result which provides further narrative to the result code. 
    attr_accessor :result_message

    # A name of the card scheme of the transaction that processed the transaction such as Visa or MasterCard. 
    attr_accessor :scheme

    # A SHA256 digest value of the transaction used to validate the response data The digest is calculated by concatenating   * authcode   * amount   * response_code   * merchant_id   * trans_no   * identifier   * licence_key - which is not provided in the response. 
    attr_accessor :sha256

    # Used to identify the status of a transaction. The status is used to track a transaction through its life cycle.  <table> <tr> <th>Id</th> <th>Description</th> </tr> <tr> <td>O</td> <td>Transaction is open for settlement</td> </tr> <tr> <td>A</td> <td>Transaction is assigned for settlement and can no longer be voided</td> </tr> <tr> <td>S</td> <td>Transaction has been settled</td> </tr> <tr> <td>D</td> <td>Transaction has been declined</td> </tr> <tr> <td>R</td> <td>Transaction has been rejected</td> </tr> <tr> <td>P</td> <td>Transaction has been authorised only and awaiting a capture. Used in pre-auth situations</td> </tr> <tr> <td>C</td> <td>Transaction has been cancelled</td> </tr> <tr> <td>E</td> <td>Transaction has expired</td> </tr> <tr> <td>I</td> <td>Transaction has been initialised but no action was able to be carried out</td> </tr> <tr> <td>H</td> <td>Transaction is awaiting authorisation</td> </tr> <tr> <td>.</td> <td>Transaction is on hold</td> </tr> <tr> <td>V</td> <td>Transaction has been verified</td> </tr> </table> 
    attr_accessor :trans_status

    # The resulting transaction number, ordered incrementally from 1 for every merchant_id. The value will default to less than 1 for transactions that do not have a transaction number issued. 
    attr_accessor :transno

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'atrn' => :'atrn',
        :'atsd' => :'atsd',
        :'authcode' => :'authcode',
        :'authen_result' => :'authen_result',
        :'authorised' => :'authorised',
        :'avs_result' => :'avs_result',
        :'bin_commercial' => :'bin_commercial',
        :'bin_debit' => :'bin_debit',
        :'bin_description' => :'bin_description',
        :'cavv' => :'cavv',
        :'context' => :'context',
        :'csc_result' => :'csc_result',
        :'currency' => :'currency',
        :'datetime' => :'datetime',
        :'eci' => :'eci',
        :'identifier' => :'identifier',
        :'live' => :'live',
        :'maskedpan' => :'maskedpan',
        :'merchantid' => :'merchantid',
        :'result' => :'result',
        :'result_code' => :'result_code',
        :'result_message' => :'result_message',
        :'scheme' => :'scheme',
        :'sha256' => :'sha256',
        :'trans_status' => :'trans_status',
        :'transno' => :'transno'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Integer',
        :'atrn' => :'String',
        :'atsd' => :'String',
        :'authcode' => :'String',
        :'authen_result' => :'String',
        :'authorised' => :'Boolean',
        :'avs_result' => :'String',
        :'bin_commercial' => :'Boolean',
        :'bin_debit' => :'Boolean',
        :'bin_description' => :'String',
        :'cavv' => :'String',
        :'context' => :'String',
        :'csc_result' => :'String',
        :'currency' => :'String',
        :'datetime' => :'Time',
        :'eci' => :'String',
        :'identifier' => :'String',
        :'live' => :'Boolean',
        :'maskedpan' => :'String',
        :'merchantid' => :'Integer',
        :'result' => :'Integer',
        :'result_code' => :'String',
        :'result_message' => :'String',
        :'scheme' => :'String',
        :'sha256' => :'String',
        :'trans_status' => :'String',
        :'transno' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CityPayApiClient::AuthResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CityPayApiClient::AuthResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'atrn')
        self.atrn = attributes[:'atrn']
      end

      if attributes.key?(:'atsd')
        self.atsd = attributes[:'atsd']
      end

      if attributes.key?(:'authcode')
        self.authcode = attributes[:'authcode']
      end

      if attributes.key?(:'authen_result')
        self.authen_result = attributes[:'authen_result']
      end

      if attributes.key?(:'authorised')
        self.authorised = attributes[:'authorised']
      end

      if attributes.key?(:'avs_result')
        self.avs_result = attributes[:'avs_result']
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

      if attributes.key?(:'cavv')
        self.cavv = attributes[:'cavv']
      end

      if attributes.key?(:'context')
        self.context = attributes[:'context']
      end

      if attributes.key?(:'csc_result')
        self.csc_result = attributes[:'csc_result']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'datetime')
        self.datetime = attributes[:'datetime']
      end

      if attributes.key?(:'eci')
        self.eci = attributes[:'eci']
      end

      if attributes.key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.key?(:'live')
        self.live = attributes[:'live']
      end

      if attributes.key?(:'maskedpan')
        self.maskedpan = attributes[:'maskedpan']
      end

      if attributes.key?(:'merchantid')
        self.merchantid = attributes[:'merchantid']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'result_code')
        self.result_code = attributes[:'result_code']
      end

      if attributes.key?(:'result_message')
        self.result_message = attributes[:'result_message']
      end

      if attributes.key?(:'scheme')
        self.scheme = attributes[:'scheme']
      end

      if attributes.key?(:'sha256')
        self.sha256 = attributes[:'sha256']
      end

      if attributes.key?(:'trans_status')
        self.trans_status = attributes[:'trans_status']
      end

      if attributes.key?(:'transno')
        self.transno = attributes[:'transno']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@avs_result.nil? && @avs_result.to_s.length > 1
        invalid_properties.push('invalid value for "avs_result", the character length must be smaller than or equal to 1.')
      end

      if !@avs_result.nil? && @avs_result.to_s.length < 1
        invalid_properties.push('invalid value for "avs_result", the character length must be great than or equal to 1.')
      end

      if !@csc_result.nil? && @csc_result.to_s.length > 1
        invalid_properties.push('invalid value for "csc_result", the character length must be smaller than or equal to 1.')
      end

      if !@csc_result.nil? && @csc_result.to_s.length < 1
        invalid_properties.push('invalid value for "csc_result", the character length must be great than or equal to 1.')
      end

      if !@currency.nil? && @currency.to_s.length > 3
        invalid_properties.push('invalid value for "currency", the character length must be smaller than or equal to 3.')
      end

      if !@currency.nil? && @currency.to_s.length < 3
        invalid_properties.push('invalid value for "currency", the character length must be great than or equal to 3.')
      end

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
      return false if !@avs_result.nil? && @avs_result.to_s.length > 1
      return false if !@avs_result.nil? && @avs_result.to_s.length < 1
      return false if !@csc_result.nil? && @csc_result.to_s.length > 1
      return false if !@csc_result.nil? && @csc_result.to_s.length < 1
      return false if !@currency.nil? && @currency.to_s.length > 3
      return false if !@currency.nil? && @currency.to_s.length < 3
      return false if !@identifier.nil? && @identifier.to_s.length > 50
      return false if !@identifier.nil? && @identifier.to_s.length < 4
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] avs_result Value to be assigned
    def avs_result=(avs_result)
      if !avs_result.nil? && avs_result.to_s.length > 1
        fail ArgumentError, 'invalid value for "avs_result", the character length must be smaller than or equal to 1.'
      end

      if !avs_result.nil? && avs_result.to_s.length < 1
        fail ArgumentError, 'invalid value for "avs_result", the character length must be great than or equal to 1.'
      end

      @avs_result = avs_result
    end

    # Custom attribute writer method with validation
    # @param [Object] csc_result Value to be assigned
    def csc_result=(csc_result)
      if !csc_result.nil? && csc_result.to_s.length > 1
        fail ArgumentError, 'invalid value for "csc_result", the character length must be smaller than or equal to 1.'
      end

      if !csc_result.nil? && csc_result.to_s.length < 1
        fail ArgumentError, 'invalid value for "csc_result", the character length must be great than or equal to 1.'
      end

      @csc_result = csc_result
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if !currency.nil? && currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency", the character length must be smaller than or equal to 3.'
      end

      if !currency.nil? && currency.to_s.length < 3
        fail ArgumentError, 'invalid value for "currency", the character length must be great than or equal to 3.'
      end

      @currency = currency
    end

    # Custom attribute writer method with validation
    # @param [Object] identifier Value to be assigned
    def identifier=(identifier)
      if !identifier.nil? && identifier.to_s.length > 50
        fail ArgumentError, 'invalid value for "identifier", the character length must be smaller than or equal to 50.'
      end

      if !identifier.nil? && identifier.to_s.length < 4
        fail ArgumentError, 'invalid value for "identifier", the character length must be great than or equal to 4.'
      end

      @identifier = identifier
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          atrn == o.atrn &&
          atsd == o.atsd &&
          authcode == o.authcode &&
          authen_result == o.authen_result &&
          authorised == o.authorised &&
          avs_result == o.avs_result &&
          bin_commercial == o.bin_commercial &&
          bin_debit == o.bin_debit &&
          bin_description == o.bin_description &&
          cavv == o.cavv &&
          context == o.context &&
          csc_result == o.csc_result &&
          currency == o.currency &&
          datetime == o.datetime &&
          eci == o.eci &&
          identifier == o.identifier &&
          live == o.live &&
          maskedpan == o.maskedpan &&
          merchantid == o.merchantid &&
          result == o.result &&
          result_code == o.result_code &&
          result_message == o.result_message &&
          scheme == o.scheme &&
          sha256 == o.sha256 &&
          trans_status == o.trans_status &&
          transno == o.transno
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, atrn, atsd, authcode, authen_result, authorised, avs_result, bin_commercial, bin_debit, bin_description, cavv, context, csc_result, currency, datetime, eci, identifier, live, maskedpan, merchantid, result, result_code, result_message, scheme, sha256, trans_status, transno].hash
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
