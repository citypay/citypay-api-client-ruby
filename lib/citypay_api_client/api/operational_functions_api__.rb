=begin
#CityPay Payment API

# Welcome to the CityPay API, a robust HTTP API payment solution designed for seamless server-to-server  transactional processing. Our API facilitates a wide array of payment operations, catering to diverse business needs.  Whether you're integrating Internet payments, handling Mail Order/Telephone Order (MOTO) transactions, managing  Subscriptions with Recurring and Continuous Authority payments, or navigating the complexities of 3-D Secure  authentication, our API is equipped to support your requirements. Additionally, we offer functionalities for  Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids, and Completion processing, alongside the capability  for tokenised payments.  ## Compliance and Security Overview <aside class=\"notice\">   Ensuring the security of payment transactions and compliance with industry standards is paramount. Our API is    designed with stringent security measures and compliance protocols to safeguard sensitive information and meet    the rigorous requirements of Visa, MasterCard, and the PCI Security Standards Council. </aside>  ### Key Compliance and Security Measures  * **TLS Encryption**: All data transmissions must utilise TLS version 1.2 or higher, employing [strong cryptography](#enabled-tls-ciphers). Our infrastructure strictly enforces this requirement to maintain the integrity and confidentiality of data in transit. We conduct regular scans and assessments of our TLS endpoints to identify and mitigate vulnerabilities. * **Data Storage Prohibitions**: Storing sensitive cardholder data (CHD), such as the card security code (CSC) or primary account number (PAN), is strictly prohibited. Our API is designed to minimize your exposure to sensitive data, thereby reducing your compliance burden. * **Data Masking**: For consumer protection and compliance, full card numbers must not be displayed on receipts or any customer-facing materials. Our API automatically masks PANs, displaying only the last four digits to facilitate safe receipt generation. * **Network Scans**: If your application is web-based, regular scans of your hosting environment are mandatory to identify and rectify potential vulnerabilities. This proactive measure is crucial for maintaining a secure and compliant online presence. * **PCI Compliance**: Adherence to PCI DSS standards is not optional; it's a requirement for operating securely and legally in the payments ecosystem. For detailed information on compliance requirements and resources, please visit the PCI Security Standards Council website [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/). * **Request Validation**: Our API includes mechanisms to verify the legitimacy of each request, ensuring it pertains to a valid account and originates from a trusted source. We leverage remote IP address verification alongside sophisticated application firewall technologies to thwart a wide array of common security threats.  ## Getting Started Before integrating with the CityPay API, ensure your application and development practices align with the outlined compliance and security measures. This preparatory step is crucial for a smooth integration process and the long-term success of your payment processing operations.  For further details on API endpoints, request/response formats, and code examples, proceed to the subsequent sections of our documentation. Our aim is to provide you with all the necessary tools and information to integrate our payment processing capabilities seamlessly into your application.  Thank you for choosing CityPay API. We look forward to supporting your payment processing needs with our secure, compliant, and versatile API solution. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'cgi'

module CityPayApiClient
  class OperationalFunctionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # ACL Check Request
    # Allows the checking of IP addresses against configured ACLs. Requests can perform a lookup of addresses in subnets and services such as AWS or Azure to check that those addresses are listed in the ACLs. 
    # @param acl_check_request [AclCheckRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AclCheckResponseModel]
    def acl_check_request(acl_check_request, opts = {})
      data, _status_code, _headers = acl_check_request_with_http_info(acl_check_request, opts)
      data
    end

    # ACL Check Request
    # Allows the checking of IP addresses against configured ACLs. Requests can perform a lookup of addresses in subnets and services such as AWS or Azure to check that those addresses are listed in the ACLs. 
    # @param acl_check_request [AclCheckRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AclCheckResponseModel, Integer, Hash)>] AclCheckResponseModel data, response status code and response headers
    def acl_check_request_with_http_info(acl_check_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationalFunctionsApi.acl_check_request ...'
      end
      # verify the required parameter 'acl_check_request' is set
      if @api_client.config.client_side_validation && acl_check_request.nil?
        fail ArgumentError, "Missing the required parameter 'acl_check_request' when calling OperationalFunctionsApi.acl_check_request"
      end
      # resource path
      local_var_path = '/v6/acl/check'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(acl_check_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AclCheckResponseModel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"OperationalFunctionsApi.acl_check_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationalFunctionsApi#acl_check_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Domain Key Check Request
    # Checks the contents of a `domain key`. Can be used for operational processes to ensure that the properties of a  domain key meet their expectations. 
    # @param domain_key_check_request [DomainKeyCheckRequest] 
    # @param [Hash] opts the optional parameters
    # @return [DomainKeyResponse]
    def domain_key_check_request(domain_key_check_request, opts = {})
      data, _status_code, _headers = domain_key_check_request_with_http_info(domain_key_check_request, opts)
      data
    end

    # Domain Key Check Request
    # Checks the contents of a &#x60;domain key&#x60;. Can be used for operational processes to ensure that the properties of a  domain key meet their expectations. 
    # @param domain_key_check_request [DomainKeyCheckRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainKeyResponse, Integer, Hash)>] DomainKeyResponse data, response status code and response headers
    def domain_key_check_request_with_http_info(domain_key_check_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationalFunctionsApi.domain_key_check_request ...'
      end
      # verify the required parameter 'domain_key_check_request' is set
      if @api_client.config.client_side_validation && domain_key_check_request.nil?
        fail ArgumentError, "Missing the required parameter 'domain_key_check_request' when calling OperationalFunctionsApi.domain_key_check_request"
      end
      # resource path
      local_var_path = '/dk/check'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(domain_key_check_request)

      # return_type
      return_type = opts[:debug_return_type] || 'DomainKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"OperationalFunctionsApi.domain_key_check_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationalFunctionsApi#domain_key_check_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Domain Key Generation Request
    # Generates a domain key based on the permissions of the calling `api-key`. Domain keys can be used in _Direct Post_ and `XHR` calls to the API services. 
    # @param domain_key_request [DomainKeyRequest] 
    # @param [Hash] opts the optional parameters
    # @return [DomainKeyResponse]
    def domain_key_gen_request(domain_key_request, opts = {})
      data, _status_code, _headers = domain_key_gen_request_with_http_info(domain_key_request, opts)
      data
    end

    # Domain Key Generation Request
    # Generates a domain key based on the permissions of the calling &#x60;api-key&#x60;. Domain keys can be used in _Direct Post_ and &#x60;XHR&#x60; calls to the API services. 
    # @param domain_key_request [DomainKeyRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainKeyResponse, Integer, Hash)>] DomainKeyResponse data, response status code and response headers
    def domain_key_gen_request_with_http_info(domain_key_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationalFunctionsApi.domain_key_gen_request ...'
      end
      # verify the required parameter 'domain_key_request' is set
      if @api_client.config.client_side_validation && domain_key_request.nil?
        fail ArgumentError, "Missing the required parameter 'domain_key_request' when calling OperationalFunctionsApi.domain_key_gen_request"
      end
      # resource path
      local_var_path = '/dk/gen'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(domain_key_request)

      # return_type
      return_type = opts[:debug_return_type] || 'DomainKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"OperationalFunctionsApi.domain_key_gen_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationalFunctionsApi#domain_key_gen_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Merchants Request
    # An operational request to list current merchants for a client.  ### Sorting  Sorting can be performed by include a query parameter i.e. `/merchants/?sort=merchantid`  Fields that can be sorted are `merchantid` or `name`. 
    # @param clientid [String] The client id to return merchants for, specifying \&quot;default\&quot; will use the value in your api key.
    # @param [Hash] opts the optional parameters
    # @return [ListMerchantsResponse]
    def list_merchants_request(clientid, opts = {})
      data, _status_code, _headers = list_merchants_request_with_http_info(clientid, opts)
      data
    end

    # List Merchants Request
    # An operational request to list current merchants for a client.  ### Sorting  Sorting can be performed by include a query parameter i.e. &#x60;/merchants/?sort&#x3D;merchantid&#x60;  Fields that can be sorted are &#x60;merchantid&#x60; or &#x60;name&#x60;. 
    # @param clientid [String] The client id to return merchants for, specifying \&quot;default\&quot; will use the value in your api key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListMerchantsResponse, Integer, Hash)>] ListMerchantsResponse data, response status code and response headers
    def list_merchants_request_with_http_info(clientid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationalFunctionsApi.list_merchants_request ...'
      end
      # verify the required parameter 'clientid' is set
      if @api_client.config.client_side_validation && clientid.nil?
        fail ArgumentError, "Missing the required parameter 'clientid' when calling OperationalFunctionsApi.list_merchants_request"
      end
      # resource path
      local_var_path = '/v6/merchants/{clientid}'.sub('{' + 'clientid' + '}', CGI.escape(clientid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListMerchantsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-api-key']

      new_options = opts.merge(
        :operation => :"OperationalFunctionsApi.list_merchants_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationalFunctionsApi#list_merchants_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ping Request
    # A ping request which performs a connection and authentication test to the CityPay API server. The request will return a standard Acknowledgement with a response code `044` to signify a successful ping.  The ping call is useful to confirm that you will be able to access  the API from behind any firewalls and that the permission model is granting access from your source. 
    # @param ping [Ping] 
    # @param [Hash] opts the optional parameters
    # @return [Acknowledgement]
    def ping_request(ping, opts = {})
      data, _status_code, _headers = ping_request_with_http_info(ping, opts)
      data
    end

    # Ping Request
    # A ping request which performs a connection and authentication test to the CityPay API server. The request will return a standard Acknowledgement with a response code &#x60;044&#x60; to signify a successful ping.  The ping call is useful to confirm that you will be able to access  the API from behind any firewalls and that the permission model is granting access from your source. 
    # @param ping [Ping] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Acknowledgement, Integer, Hash)>] Acknowledgement data, response status code and response headers
    def ping_request_with_http_info(ping, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationalFunctionsApi.ping_request ...'
      end
      # verify the required parameter 'ping' is set
      if @api_client.config.client_side_validation && ping.nil?
        fail ArgumentError, "Missing the required parameter 'ping' when calling OperationalFunctionsApi.ping_request"
      end
      # resource path
      local_var_path = '/v6/ping'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/x-www-form-urlencoded', 'application/json', 'text/xml'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'text/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ping)

      # return_type
      return_type = opts[:debug_return_type] || 'Acknowledgement'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['cp-domain-key', 'cp-api-key']

      new_options = opts.merge(
        :operation => :"OperationalFunctionsApi.ping_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationalFunctionsApi#ping_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
