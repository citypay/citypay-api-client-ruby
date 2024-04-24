=begin
#CityPay Payment API

# Welcome to the CityPay API, a robust HTTP API payment solution designed for seamless server-to-server  transactional processing. Our API facilitates a wide array of payment operations, catering to diverse business needs.  Whether you're integrating Internet payments, handling Mail Order/Telephone Order (MOTO) transactions, managing  Subscriptions with Recurring and Continuous Authority payments, or navigating the complexities of 3-D Secure  authentication, our API is equipped to support your requirements. Additionally, we offer functionalities for  Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids, and Completion processing, alongside the capability  for tokenised payments.  ## Compliance and Security Overview <aside class=\"notice\">   Ensuring the security of payment transactions and compliance with industry standards is paramount. Our API is    designed with stringent security measures and compliance protocols to safeguard sensitive information and meet    the rigorous requirements of Visa, MasterCard, and the PCI Security Standards Council. </aside>  ### Key Compliance and Security Measures  * **TLS Encryption**: All data transmissions must utilise TLS version 1.2 or higher, employing [strong cryptography](#enabled-tls-ciphers). Our infrastructure strictly enforces this requirement to maintain the integrity and confidentiality of data in transit. We conduct regular scans and assessments of our TLS endpoints to identify and mitigate vulnerabilities. * **Data Storage Prohibitions**: Storing sensitive cardholder data (CHD), such as the card security code (CSC) or primary account number (PAN), is strictly prohibited. Our API is designed to minimize your exposure to sensitive data, thereby reducing your compliance burden. * **Data Masking**: For consumer protection and compliance, full card numbers must not be displayed on receipts or any customer-facing materials. Our API automatically masks PANs, displaying only the last four digits to facilitate safe receipt generation. * **Network Scans**: If your application is web-based, regular scans of your hosting environment are mandatory to identify and rectify potential vulnerabilities. This proactive measure is crucial for maintaining a secure and compliant online presence. * **PCI Compliance**: Adherence to PCI DSS standards is not optional; it's a requirement for operating securely and legally in the payments ecosystem. For detailed information on compliance requirements and resources, please visit the PCI Security Standards Council website [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/). * **Request Validation**: Our API includes mechanisms to verify the legitimacy of each request, ensuring it pertains to a valid account and originates from a trusted source. We leverage remote IP address verification alongside sophisticated application firewall technologies to thwart a wide array of common security threats.  ## Getting Started Before integrating with the CityPay API, ensure your application and development practices align with the outlined compliance and security measures. This preparatory step is crucial for a smooth integration process and the long-term success of your payment processing operations.  For further details on API endpoints, request/response formats, and code examples, proceed to the subsequent sections of our documentation. Our aim is to provide you with all the necessary tools and information to integrate our payment processing capabilities seamlessly into your application.  Thank you for choosing CityPay API. We look forward to supporting your payment processing needs with our secure, compliant, and versatile API solution. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'cgi'

module CityPayApiClient
  class AuthorisationAndPaymentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Authorisation
    # Performs a request for authorisation for a card payment request.
    # @param auth_request [AuthRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Decision]
    def authorisation_request(auth_request, opts = {})
      data, _status_code, _headers = authorisation_request_with_http_info(auth_request, opts)
      data
    end

    # Authorisation
    # Performs a request for authorisation for a card payment request.
    # @param auth_request [AuthRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Decision, Integer, Hash)>] Decision data, response status code and response headers
    def authorisation_request_with_http_info(auth_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthorisationAndPaymentApi.authorisation_request ...'
      end
      # verify the required parameter 'auth_request' is set
      if @api_client.config.client_side_validation && auth_request.nil?
        fail ArgumentError, "Missing the required parameter 'auth_request' when calling AuthorisationAndPaymentApi.authorisation_request"
      end
      # resource path
      local_var_path = '/v6/authorise'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Decision'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"AuthorisationAndPaymentApi.authorisation_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorisationAndPaymentApi#authorisation_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bin Lookup
    # A bin range lookup service can be used to check what a card is, as seen by the gateway. Each card number's  leading digits help to identify who  0. the card scheme is such as Visa, MasterCard or American Express  1. the issuer of the card, such as the bank 2. it's country of origin 3. it's currency of origin  Our gateway has 450 thousand possible bin ranges and uses a number of algorithms to determine the likelihood of the bin data. The request requires a bin value of between 6 and 12 digits. The more digits provided may ensure a more accurate result. 
    # @param bin_lookup [BinLookup] 
    # @param [Hash] opts the optional parameters
    # @return [Bin]
    def bin_range_lookup_request(bin_lookup, opts = {})
      data, _status_code, _headers = bin_range_lookup_request_with_http_info(bin_lookup, opts)
      data
    end

    # Bin Lookup
    # A bin range lookup service can be used to check what a card is, as seen by the gateway. Each card number&#39;s  leading digits help to identify who  0. the card scheme is such as Visa, MasterCard or American Express  1. the issuer of the card, such as the bank 2. it&#39;s country of origin 3. it&#39;s currency of origin  Our gateway has 450 thousand possible bin ranges and uses a number of algorithms to determine the likelihood of the bin data. The request requires a bin value of between 6 and 12 digits. The more digits provided may ensure a more accurate result. 
    # @param bin_lookup [BinLookup] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Bin, Integer, Hash)>] Bin data, response status code and response headers
    def bin_range_lookup_request_with_http_info(bin_lookup, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthorisationAndPaymentApi.bin_range_lookup_request ...'
      end
      # verify the required parameter 'bin_lookup' is set
      if @api_client.config.client_side_validation && bin_lookup.nil?
        fail ArgumentError, "Missing the required parameter 'bin_lookup' when calling AuthorisationAndPaymentApi.bin_range_lookup_request"
      end
      # resource path
      local_var_path = '/v6/bin'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bin_lookup)

      # return_type
      return_type = opts[:debug_return_type] || 'Bin'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"AuthorisationAndPaymentApi.bin_range_lookup_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorisationAndPaymentApi#bin_range_lookup_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # CRes
    # The CRes request performs authorisation processing once a challenge request has been completed with an Authentication Server (ACS). This challenge response contains confirmation that will allow the API systems to return an authorisation response based on the result. Our systems will  know out of band via an `RReq` call by the ACS to notify us if the liability shift has been issued.  Any call to the CRes operation will require a previous authorisation request and cannot be called  on its own without a previous [request challenge](#requestchallenged) being obtained. 
    # @param c_res_auth_request [CResAuthRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AuthResponse]
    def c_res_request(c_res_auth_request, opts = {})
      data, _status_code, _headers = c_res_request_with_http_info(c_res_auth_request, opts)
      data
    end

    # CRes
    # The CRes request performs authorisation processing once a challenge request has been completed with an Authentication Server (ACS). This challenge response contains confirmation that will allow the API systems to return an authorisation response based on the result. Our systems will  know out of band via an &#x60;RReq&#x60; call by the ACS to notify us if the liability shift has been issued.  Any call to the CRes operation will require a previous authorisation request and cannot be called  on its own without a previous [request challenge](#requestchallenged) being obtained. 
    # @param c_res_auth_request [CResAuthRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthResponse, Integer, Hash)>] AuthResponse data, response status code and response headers
    def c_res_request_with_http_info(c_res_auth_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthorisationAndPaymentApi.c_res_request ...'
      end
      # verify the required parameter 'c_res_auth_request' is set
      if @api_client.config.client_side_validation && c_res_auth_request.nil?
        fail ArgumentError, "Missing the required parameter 'c_res_auth_request' when calling AuthorisationAndPaymentApi.c_res_request"
      end
      # resource path
      local_var_path = '/v6/cres'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(c_res_auth_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"AuthorisationAndPaymentApi.c_res_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorisationAndPaymentApi#c_res_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Capture
    # _The capture process only applies to transactions which have been pre-authorised only._   The capture process will ensure that a transaction will now settle. It is expected that a capture call will be provided within 3 days or a maximum of 7 days.  A capture request is provided to confirm that you wish the transaction to be settled. This request can contain a final amount for the transaction which is different to the original authorisation amount. This may be useful in a delayed system process such as waiting for stock to be ordered, confirmed, or services provided before the final cost is known.  When a transaction is completed, a new authorisation code may be created and a new confirmation can be sent online to the acquiring bank.  Once the transaction has been processed. A standard [`Acknowledgement`](#acknowledgement) will be returned, outlining the result of the transaction. On a successful completion process, the transaction will be available for the settlement and completed at the end of the day. 
    # @param capture_request [CaptureRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Acknowledgement]
    def capture_request(capture_request, opts = {})
      data, _status_code, _headers = capture_request_with_http_info(capture_request, opts)
      data
    end

    # Capture
    # _The capture process only applies to transactions which have been pre-authorised only._   The capture process will ensure that a transaction will now settle. It is expected that a capture call will be provided within 3 days or a maximum of 7 days.  A capture request is provided to confirm that you wish the transaction to be settled. This request can contain a final amount for the transaction which is different to the original authorisation amount. This may be useful in a delayed system process such as waiting for stock to be ordered, confirmed, or services provided before the final cost is known.  When a transaction is completed, a new authorisation code may be created and a new confirmation can be sent online to the acquiring bank.  Once the transaction has been processed. A standard [&#x60;Acknowledgement&#x60;](#acknowledgement) will be returned, outlining the result of the transaction. On a successful completion process, the transaction will be available for the settlement and completed at the end of the day. 
    # @param capture_request [CaptureRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Acknowledgement, Integer, Hash)>] Acknowledgement data, response status code and response headers
    def capture_request_with_http_info(capture_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthorisationAndPaymentApi.capture_request ...'
      end
      # verify the required parameter 'capture_request' is set
      if @api_client.config.client_side_validation && capture_request.nil?
        fail ArgumentError, "Missing the required parameter 'capture_request' when calling AuthorisationAndPaymentApi.capture_request"
      end
      # resource path
      local_var_path = '/v6/capture'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(capture_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Acknowledgement'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"AuthorisationAndPaymentApi.capture_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorisationAndPaymentApi#capture_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Payment Intent
    # This endpoint initiates the creation of a payment intent, which is a precursor to processing a payment. A payment intent captures the details of a prospective payment transaction, including the payment amount, currency, and associated billing and shipping information. 
    # @param payment_intent [PaymentIntent] 
    # @param [Hash] opts the optional parameters
    # @return [PaymentIntentReference]
    def create_payment_intent(payment_intent, opts = {})
      data, _status_code, _headers = create_payment_intent_with_http_info(payment_intent, opts)
      data
    end

    # Create a Payment Intent
    # This endpoint initiates the creation of a payment intent, which is a precursor to processing a payment. A payment intent captures the details of a prospective payment transaction, including the payment amount, currency, and associated billing and shipping information. 
    # @param payment_intent [PaymentIntent] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentIntentReference, Integer, Hash)>] PaymentIntentReference data, response status code and response headers
    def create_payment_intent_with_http_info(payment_intent, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthorisationAndPaymentApi.create_payment_intent ...'
      end
      # verify the required parameter 'payment_intent' is set
      if @api_client.config.client_side_validation && payment_intent.nil?
        fail ArgumentError, "Missing the required parameter 'payment_intent' when calling AuthorisationAndPaymentApi.create_payment_intent"
      end
      # resource path
      local_var_path = '/v6/intent/create'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_intent)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentIntentReference'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"AuthorisationAndPaymentApi.create_payment_intent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorisationAndPaymentApi#create_payment_intent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # PaRes
    # The Payer Authentication Response (PaRes) is an operation after the result of authentication   being performed. The request uses an encoded packet of authentication data to  notify us of the completion of the liability shift. Once this value has been unpacked and its signature is checked, our systems will proceed to authorisation processing.    Any call to the PaRes operation will require a previous authorisation request and cannot be called  on its own without a previous [authentication required](#authenticationrequired)  being obtained. 
    # @param pa_res_auth_request [PaResAuthRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AuthResponse]
    def pa_res_request(pa_res_auth_request, opts = {})
      data, _status_code, _headers = pa_res_request_with_http_info(pa_res_auth_request, opts)
      data
    end

    # PaRes
    # The Payer Authentication Response (PaRes) is an operation after the result of authentication   being performed. The request uses an encoded packet of authentication data to  notify us of the completion of the liability shift. Once this value has been unpacked and its signature is checked, our systems will proceed to authorisation processing.    Any call to the PaRes operation will require a previous authorisation request and cannot be called  on its own without a previous [authentication required](#authenticationrequired)  being obtained. 
    # @param pa_res_auth_request [PaResAuthRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthResponse, Integer, Hash)>] AuthResponse data, response status code and response headers
    def pa_res_request_with_http_info(pa_res_auth_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthorisationAndPaymentApi.pa_res_request ...'
      end
      # verify the required parameter 'pa_res_auth_request' is set
      if @api_client.config.client_side_validation && pa_res_auth_request.nil?
        fail ArgumentError, "Missing the required parameter 'pa_res_auth_request' when calling AuthorisationAndPaymentApi.pa_res_request"
      end
      # resource path
      local_var_path = '/v6/pares'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(pa_res_auth_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"AuthorisationAndPaymentApi.pa_res_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorisationAndPaymentApi#pa_res_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Refund
    # A refund request which allows for the refunding of a previous transaction up  and to the amount of the original sale. A refund will be performed against the  original card used to process the transaction. 
    # @param refund_request [RefundRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AuthResponse]
    def refund_request(refund_request, opts = {})
      data, _status_code, _headers = refund_request_with_http_info(refund_request, opts)
      data
    end

    # Refund
    # A refund request which allows for the refunding of a previous transaction up  and to the amount of the original sale. A refund will be performed against the  original card used to process the transaction. 
    # @param refund_request [RefundRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthResponse, Integer, Hash)>] AuthResponse data, response status code and response headers
    def refund_request_with_http_info(refund_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthorisationAndPaymentApi.refund_request ...'
      end
      # verify the required parameter 'refund_request' is set
      if @api_client.config.client_side_validation && refund_request.nil?
        fail ArgumentError, "Missing the required parameter 'refund_request' when calling AuthorisationAndPaymentApi.refund_request"
      end
      # resource path
      local_var_path = '/v6/refund'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(refund_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"AuthorisationAndPaymentApi.refund_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorisationAndPaymentApi#refund_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieval
    # A retrieval request which allows an integration to obtain the result of a transaction processed in the last 90 days. The request allows for retrieval based on the identifier or transaction  number.   The process may return multiple results in particular where a transaction was processed multiple times against the same identifier. This can happen if errors were first received. The API therefore returns up to the first 5 transactions in the latest date time order.  It is not intended for this operation to be a replacement for reporting and only allows for base transaction information to be returned. 
    # @param retrieve_request [RetrieveRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AuthReferences]
    def retrieval_request(retrieve_request, opts = {})
      data, _status_code, _headers = retrieval_request_with_http_info(retrieve_request, opts)
      data
    end

    # Retrieval
    # A retrieval request which allows an integration to obtain the result of a transaction processed in the last 90 days. The request allows for retrieval based on the identifier or transaction  number.   The process may return multiple results in particular where a transaction was processed multiple times against the same identifier. This can happen if errors were first received. The API therefore returns up to the first 5 transactions in the latest date time order.  It is not intended for this operation to be a replacement for reporting and only allows for base transaction information to be returned. 
    # @param retrieve_request [RetrieveRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthReferences, Integer, Hash)>] AuthReferences data, response status code and response headers
    def retrieval_request_with_http_info(retrieve_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthorisationAndPaymentApi.retrieval_request ...'
      end
      # verify the required parameter 'retrieve_request' is set
      if @api_client.config.client_side_validation && retrieve_request.nil?
        fail ArgumentError, "Missing the required parameter 'retrieve_request' when calling AuthorisationAndPaymentApi.retrieval_request"
      end
      # resource path
      local_var_path = '/v6/retrieve'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(retrieve_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthReferences'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"AuthorisationAndPaymentApi.retrieval_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorisationAndPaymentApi#retrieval_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Void
    # _The void process generally applies to transactions which have been pre-authorised only however voids can occur  on the same day if performed before batching and settlement._   The void process will ensure that a transaction will now settle. It is expected that a void call will be  provided on the same day before batching and settlement or within 3 days or within a maximum of 7 days.  Once the transaction has been processed as a void, an [`Acknowledgement`](#acknowledgement) will be returned, outlining the result of the transaction. 
    # @param void_request [VoidRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Acknowledgement]
    def void_request(void_request, opts = {})
      data, _status_code, _headers = void_request_with_http_info(void_request, opts)
      data
    end

    # Void
    # _The void process generally applies to transactions which have been pre-authorised only however voids can occur  on the same day if performed before batching and settlement._   The void process will ensure that a transaction will now settle. It is expected that a void call will be  provided on the same day before batching and settlement or within 3 days or within a maximum of 7 days.  Once the transaction has been processed as a void, an [&#x60;Acknowledgement&#x60;](#acknowledgement) will be returned, outlining the result of the transaction. 
    # @param void_request [VoidRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Acknowledgement, Integer, Hash)>] Acknowledgement data, response status code and response headers
    def void_request_with_http_info(void_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthorisationAndPaymentApi.void_request ...'
      end
      # verify the required parameter 'void_request' is set
      if @api_client.config.client_side_validation && void_request.nil?
        fail ArgumentError, "Missing the required parameter 'void_request' when calling AuthorisationAndPaymentApi.void_request"
      end
      # resource path
      local_var_path = '/v6/void'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(void_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Acknowledgement'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"AuthorisationAndPaymentApi.void_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorisationAndPaymentApi#void_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
