=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class PaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
	  @api_client.set_configuration(config)
    end
    # Process a Payment
    # Authorize the payment for the transaction. Authorization can be requested with Capture, Decision Manager, Payer Authentication(3ds). Find more on [Authorization with Add-On Features page.] (https://developer.cybersource.com/api/authorization-add-ons.html) 
    # @param create_payment_request 
    # @param [Hash] opts the optional parameters
    # @return [PtsV2PaymentsPost201Response]
    def create_payment(create_payment_request, opts = {})
      data, status_code, headers = create_payment_with_http_info(create_payment_request, opts)
      return data, status_code, headers
    end

    # Process a Payment
    # Authorize the payment for the transaction. Authorization can be requested with Capture, Decision Manager, Payer Authentication(3ds). Find more on [Authorization with Add-On Features page.] (https://developer.cybersource.com/api/authorization-add-ons.html) 
    # @param create_payment_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2PaymentsPost201Response, Fixnum, Hash)>] PtsV2PaymentsPost201Response data, response status code and response headers
    def create_payment_with_http_info(create_payment_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: PaymentsApi.create_payment ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'create_payment_request' is set
      if @api_client.config.client_side_validation && create_payment_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_payment_request' when calling PaymentsApi.create_payment"
      end
      # resource path
      local_var_path = 'pts/v2/payments'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_payment_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2PaymentsPost201Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: PaymentsApi#create_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Increment an Authorization
    # Use this service to authorize additional charges in a lodging or autorental transaction. Include the ID returned from the original authorization in the PATCH request to add additional charges to that authorization. 
    # @param id The ID returned from the original authorization request.
    # @param increment_auth_request 
    # @param [Hash] opts the optional parameters
    # @return [PtsV2IncrementalAuthorizationPatch201Response]
    def increment_auth(id, increment_auth_request, opts = {})
      data, status_code, headers = increment_auth_with_http_info(id, increment_auth_request, opts)
      return data, status_code, headers
    end

    # Increment an Authorization
    # Use this service to authorize additional charges in a lodging or autorental transaction. Include the ID returned from the original authorization in the PATCH request to add additional charges to that authorization. 
    # @param id The ID returned from the original authorization request.
    # @param increment_auth_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2IncrementalAuthorizationPatch201Response, Fixnum, Hash)>] PtsV2IncrementalAuthorizationPatch201Response data, response status code and response headers
    def increment_auth_with_http_info(id, increment_auth_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: PaymentsApi.increment_auth ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.increment_auth"
      end
      # verify the required parameter 'increment_auth_request' is set
      if @api_client.config.client_side_validation && increment_auth_request.nil?
        fail ArgumentError, "Missing the required parameter 'increment_auth_request' when calling PaymentsApi.increment_auth"
      end
      # resource path
      local_var_path = 'pts/v2/payments/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(increment_auth_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2IncrementalAuthorizationPatch201Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: PaymentsApi#increment_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
  end
end
