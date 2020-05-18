=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class DecisionManagerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
	  @api_client.set_configuration(config)
    end
    # List Management
    # This call adds/deletes/converts the request information in the negative list.  Provide the list to be updated as the path parameter. This value can be 'postiive', 'negative' or 'review'. 
    # @param type The list to be updated. It can be &#39;positive&#39;, &#39;negative&#39; or &#39;review&#39;.
    # @param add_negative_list_request 
    # @param [Hash] opts the optional parameters
    # @return [RiskV1UpdatePost201Response]
    def add_negative(type, add_negative_list_request, opts = {})
      data, status_code, headers = add_negative_with_http_info(type, add_negative_list_request, opts)
      return data, status_code, headers
    end

    # List Management
    # This call adds/deletes/converts the request information in the negative list.  Provide the list to be updated as the path parameter. This value can be &#39;postiive&#39;, &#39;negative&#39; or &#39;review&#39;. 
    # @param type The list to be updated. It can be &#39;positive&#39;, &#39;negative&#39; or &#39;review&#39;.
    # @param add_negative_list_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RiskV1UpdatePost201Response, Fixnum, Hash)>] RiskV1UpdatePost201Response data, response status code and response headers
    def add_negative_with_http_info(type, add_negative_list_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: DecisionManagerApi.add_negative ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling DecisionManagerApi.add_negative"
      end
      # verify the required parameter 'add_negative_list_request' is set
      if @api_client.config.client_side_validation && add_negative_list_request.nil?
        fail ArgumentError, "Missing the required parameter 'add_negative_list_request' when calling DecisionManagerApi.add_negative"
      end
      # resource path
      local_var_path = 'risk/v1/lists/{type}/entries'.sub('{' + 'type' + '}', type.to_s)

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
      post_body = @api_client.object_to_http_body(add_negative_list_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RiskV1UpdatePost201Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: DecisionManagerApi#add_negative\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Create Decision Manager Case
    # This is the combined request to the Decision Manager Service for a transaction sent to Cybersource. Decision Manager will return a decision based on the request values.
    # @param create_bundled_decision_manager_case_request 
    # @param [Hash] opts the optional parameters
    # @return [RiskV1DecisionsPost201Response]
    def create_bundled_decision_manager_case(create_bundled_decision_manager_case_request, opts = {})
      data, status_code, headers = create_bundled_decision_manager_case_with_http_info(create_bundled_decision_manager_case_request, opts)
      return data, status_code, headers
    end

    # Create Decision Manager Case
    # This is the combined request to the Decision Manager Service for a transaction sent to Cybersource. Decision Manager will return a decision based on the request values.
    # @param create_bundled_decision_manager_case_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RiskV1DecisionsPost201Response, Fixnum, Hash)>] RiskV1DecisionsPost201Response data, response status code and response headers
    def create_bundled_decision_manager_case_with_http_info(create_bundled_decision_manager_case_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: DecisionManagerApi.create_bundled_decision_manager_case ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'create_bundled_decision_manager_case_request' is set
      if @api_client.config.client_side_validation && create_bundled_decision_manager_case_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_bundled_decision_manager_case_request' when calling DecisionManagerApi.create_bundled_decision_manager_case"
      end
      # resource path
      local_var_path = 'risk/v1/decisions'

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
      post_body = @api_client.object_to_http_body(create_bundled_decision_manager_case_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RiskV1DecisionsPost201Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: DecisionManagerApi#create_bundled_decision_manager_case\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Fraud Marking
    # This can be used to - 1. Add known fraudulent data to the fraud history 2. Remove data added to history with Transaction Marking Tool or by uploading chargeback files 3. Remove chargeback data from history that was automatically added. For detailed information, contact your Cybersource representative  Place the request ID of the transaction you want to mark as suspect (or remove from history) as the path parameter in this request. 
    # @param id Request ID of the transaction that you want to mark as suspect or remove from history.
    # @param fraud_marking_action_request 
    # @param [Hash] opts the optional parameters
    # @return [RiskV1UpdatePost201Response]
    def fraud_update(id, fraud_marking_action_request, opts = {})
      data, status_code, headers = fraud_update_with_http_info(id, fraud_marking_action_request, opts)
      return data, status_code, headers
    end

    # Fraud Marking
    # This can be used to - 1. Add known fraudulent data to the fraud history 2. Remove data added to history with Transaction Marking Tool or by uploading chargeback files 3. Remove chargeback data from history that was automatically added. For detailed information, contact your Cybersource representative  Place the request ID of the transaction you want to mark as suspect (or remove from history) as the path parameter in this request. 
    # @param id Request ID of the transaction that you want to mark as suspect or remove from history.
    # @param fraud_marking_action_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RiskV1UpdatePost201Response, Fixnum, Hash)>] RiskV1UpdatePost201Response data, response status code and response headers
    def fraud_update_with_http_info(id, fraud_marking_action_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: DecisionManagerApi.fraud_update ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DecisionManagerApi.fraud_update"
      end
      # verify the required parameter 'fraud_marking_action_request' is set
      if @api_client.config.client_side_validation && fraud_marking_action_request.nil?
        fail ArgumentError, "Missing the required parameter 'fraud_marking_action_request' when calling DecisionManagerApi.fraud_update"
      end
      # resource path
      local_var_path = 'risk/v1/decisions/{id}/marking'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(fraud_marking_action_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RiskV1UpdatePost201Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: DecisionManagerApi#fraud_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
  end
end
