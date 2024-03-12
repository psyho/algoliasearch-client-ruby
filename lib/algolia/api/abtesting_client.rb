# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

module Algolia
  class AbtestingClient
    attr_accessor :api_client

    def initialize(config = nil)
      raise '`config` is missing.' if config.nil?
      raise '`app_id` is missing.' if config.app_id.nil? || config.app_id == ''
      raise '`api_key` is missing.' if config.api_key.nil? || config.api_key == ''

      @api_client = Algolia::ApiClient.new(config)
    end

    def self.create(app_id, api_key, region = nil, opts = {})
      hosts = []
      regions = ['de', 'us']

      if region.is_a?(Hash) && (opts.nil? || opts.empty?)
        opts = region
        region = nil
      end

      raise "`region` must be one of the following: #{regions.join(', ')}" if !region.nil? && (!region.is_a?(String) || !regions.include?(region))

      hosts << Transport::StatefulHost.new(region.nil? ? 'analytics.algolia.com' : 'analytics.{region}.algolia.com'.sub!('{region}', region),
                                           accept: CallType::READ | CallType::WRITE)

      config = Algolia::Configuration.new(app_id, api_key, hosts, 'Abtesting', opts)
      create_with_config(config)
    end

    def self.create_with_config(config)
      new(config)
    end

    # Creates an A/B test.
    #
    # Required API Key ACLs:
    #   - editSettings
    # @param add_ab_tests_request [AddABTestsRequest]  (required)
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Http::Response] the response
    def add_ab_tests_with_http_info(add_ab_tests_request, request_options = {})
      # verify the required parameter 'add_ab_tests_request' is set
      if @api_client.config.client_side_validation && add_ab_tests_request.nil?
        raise ArgumentError, "Parameter `add_ab_tests_request` is required when calling `add_ab_tests`."
      end

      path = '/2/abtests'
      query_params = {}
      query_params = query_params.merge(request_options[:query_params]) unless request_options[:query_params].nil?
      header_params = {}
      header_params = header_params.merge(request_options[:header_params]) unless request_options[:header_params].nil?

      post_body = request_options[:debug_body] || @api_client.object_to_http_body(add_ab_tests_request)

      new_options = request_options.merge(
        :operation => :'AbtestingClient.add_ab_tests',
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :use_read_transporter => false
      )

      @api_client.call_api(:POST, path, new_options)
    end

    # Creates an A/B test.
    #
    # Required API Key ACLs:
    #   - editSettings
    # @param add_ab_tests_request [AddABTestsRequest]  (required)
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [ABTestResponse]
    def add_ab_tests(add_ab_tests_request, request_options = {})
      response = add_ab_tests_with_http_info(add_ab_tests_request, request_options)
      @api_client.deserialize(response.body, request_options[:debug_return_type] || 'Abtesting::ABTestResponse')
    end

    # This method allow you to send requests to the Algolia REST API.

    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified. (required)
    # @param parameters [Hash<String, Object>] Query parameters to apply to the current query.
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Http::Response] the response
    def custom_delete_with_http_info(path, parameters = nil, request_options = {})
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        raise ArgumentError, "Parameter `path` is required when calling `custom_delete`."
      end

      path = '/1{path}'.sub('{' + 'path' + '}', path.to_s)
      query_params = {}
      query_params = query_params.merge(parameters) unless parameters.nil?
      query_params = query_params.merge(request_options[:query_params]) unless request_options[:query_params].nil?
      header_params = {}
      header_params = header_params.merge(request_options[:header_params]) unless request_options[:header_params].nil?

      post_body = request_options[:debug_body]

      new_options = request_options.merge(
        :operation => :'AbtestingClient.custom_delete',
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :use_read_transporter => false
      )

      @api_client.call_api(:DELETE, path, new_options)
    end

    # This method allow you to send requests to the Algolia REST API.

    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified. (required)
    # @param parameters [Hash<String, Object>] Query parameters to apply to the current query.
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Object]
    def custom_delete(path, parameters = nil, request_options = {})
      response = custom_delete_with_http_info(path, parameters, request_options)
      @api_client.deserialize(response.body, request_options[:debug_return_type] || 'Object')
    end

    # This method allow you to send requests to the Algolia REST API.

    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified. (required)
    # @param parameters [Hash<String, Object>] Query parameters to apply to the current query.
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Http::Response] the response
    def custom_get_with_http_info(path, parameters = nil, request_options = {})
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        raise ArgumentError, "Parameter `path` is required when calling `custom_get`."
      end

      path = '/1{path}'.sub('{' + 'path' + '}', path.to_s)
      query_params = {}
      query_params = query_params.merge(parameters) unless parameters.nil?
      query_params = query_params.merge(request_options[:query_params]) unless request_options[:query_params].nil?
      header_params = {}
      header_params = header_params.merge(request_options[:header_params]) unless request_options[:header_params].nil?

      post_body = request_options[:debug_body]

      new_options = request_options.merge(
        :operation => :'AbtestingClient.custom_get',
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :use_read_transporter => false
      )

      @api_client.call_api(:GET, path, new_options)
    end

    # This method allow you to send requests to the Algolia REST API.

    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified. (required)
    # @param parameters [Hash<String, Object>] Query parameters to apply to the current query.
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Object]
    def custom_get(path, parameters = nil, request_options = {})
      response = custom_get_with_http_info(path, parameters, request_options)
      @api_client.deserialize(response.body, request_options[:debug_return_type] || 'Object')
    end

    # This method allow you to send requests to the Algolia REST API.

    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified. (required)
    # @param parameters [Hash<String, Object>] Query parameters to apply to the current query.
    # @param body [Object] Parameters to send with the custom request.
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Http::Response] the response
    def custom_post_with_http_info(path, parameters = nil, body = nil, request_options = {})
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        raise ArgumentError, "Parameter `path` is required when calling `custom_post`."
      end

      path = '/1{path}'.sub('{' + 'path' + '}', path.to_s)
      query_params = {}
      query_params = query_params.merge(parameters) unless parameters.nil?
      query_params = query_params.merge(request_options[:query_params]) unless request_options[:query_params].nil?
      header_params = {}
      header_params = header_params.merge(request_options[:header_params]) unless request_options[:header_params].nil?

      post_body = request_options[:debug_body] || @api_client.object_to_http_body(body)

      new_options = request_options.merge(
        :operation => :'AbtestingClient.custom_post',
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :use_read_transporter => false
      )

      @api_client.call_api(:POST, path, new_options)
    end

    # This method allow you to send requests to the Algolia REST API.

    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified. (required)
    # @param parameters [Hash<String, Object>] Query parameters to apply to the current query.
    # @param body [Object] Parameters to send with the custom request.
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Object]
    def custom_post(path, parameters = nil, body = nil, request_options = {})
      response = custom_post_with_http_info(path, parameters, body, request_options)
      @api_client.deserialize(response.body, request_options[:debug_return_type] || 'Object')
    end

    # This method allow you to send requests to the Algolia REST API.

    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified. (required)
    # @param parameters [Hash<String, Object>] Query parameters to apply to the current query.
    # @param body [Object] Parameters to send with the custom request.
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Http::Response] the response
    def custom_put_with_http_info(path, parameters = nil, body = nil, request_options = {})
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        raise ArgumentError, "Parameter `path` is required when calling `custom_put`."
      end

      path = '/1{path}'.sub('{' + 'path' + '}', path.to_s)
      query_params = {}
      query_params = query_params.merge(parameters) unless parameters.nil?
      query_params = query_params.merge(request_options[:query_params]) unless request_options[:query_params].nil?
      header_params = {}
      header_params = header_params.merge(request_options[:header_params]) unless request_options[:header_params].nil?

      post_body = request_options[:debug_body] || @api_client.object_to_http_body(body)

      new_options = request_options.merge(
        :operation => :'AbtestingClient.custom_put',
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :use_read_transporter => false
      )

      @api_client.call_api(:PUT, path, new_options)
    end

    # This method allow you to send requests to the Algolia REST API.

    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified. (required)
    # @param parameters [Hash<String, Object>] Query parameters to apply to the current query.
    # @param body [Object] Parameters to send with the custom request.
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Object]
    def custom_put(path, parameters = nil, body = nil, request_options = {})
      response = custom_put_with_http_info(path, parameters, body, request_options)
      @api_client.deserialize(response.body, request_options[:debug_return_type] || 'Object')
    end

    # Delete an A/B test. To determine the &#x60;id&#x60; for an A/B test, use the [&#x60;listABTests&#x60; operation](#tag/abtest/operation/listABTests).
    #
    # Required API Key ACLs:
    #   - editSettings
    # @param id [Integer] Unique A/B test ID. (required)
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Http::Response] the response
    def delete_ab_test_with_http_info(id, request_options = {})
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Parameter `id` is required when calling `delete_ab_test`."
      end

      path = '/2/abtests/{id}'.sub('{' + 'id' + '}', Transport.encode_uri(id.to_s))
      query_params = {}
      query_params = query_params.merge(request_options[:query_params]) unless request_options[:query_params].nil?
      header_params = {}
      header_params = header_params.merge(request_options[:header_params]) unless request_options[:header_params].nil?

      post_body = request_options[:debug_body]

      new_options = request_options.merge(
        :operation => :'AbtestingClient.delete_ab_test',
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :use_read_transporter => false
      )

      @api_client.call_api(:DELETE, path, new_options)
    end

    # Delete an A/B test. To determine the `id` for an A/B test, use the [`listABTests` operation](#tag/abtest/operation/listABTests).
    #
    # Required API Key ACLs:
    #   - editSettings
    # @param id [Integer] Unique A/B test ID. (required)
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [ABTestResponse]
    def delete_ab_test(id, request_options = {})
      response = delete_ab_test_with_http_info(id, request_options)
      @api_client.deserialize(response.body, request_options[:debug_return_type] || 'Abtesting::ABTestResponse')
    end

    # Get specific details for an A/B test. To determine the &#x60;id&#x60; for an A/B test, use the [&#x60;listABTests&#x60; operation](#tag/abtest/operation/listABTests).
    #
    # Required API Key ACLs:
    #   - analytics
    # @param id [Integer] Unique A/B test ID. (required)
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Http::Response] the response
    def get_ab_test_with_http_info(id, request_options = {})
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Parameter `id` is required when calling `get_ab_test`."
      end

      path = '/2/abtests/{id}'.sub('{' + 'id' + '}', Transport.encode_uri(id.to_s))
      query_params = {}
      query_params = query_params.merge(request_options[:query_params]) unless request_options[:query_params].nil?
      header_params = {}
      header_params = header_params.merge(request_options[:header_params]) unless request_options[:header_params].nil?

      post_body = request_options[:debug_body]

      new_options = request_options.merge(
        :operation => :'AbtestingClient.get_ab_test',
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :use_read_transporter => false
      )

      @api_client.call_api(:GET, path, new_options)
    end

    # Get specific details for an A/B test. To determine the `id` for an A/B test, use the [`listABTests` operation](#tag/abtest/operation/listABTests).
    #
    # Required API Key ACLs:
    #   - analytics
    # @param id [Integer] Unique A/B test ID. (required)
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [ABTest]
    def get_ab_test(id, request_options = {})
      response = get_ab_test_with_http_info(id, request_options)
      @api_client.deserialize(response.body, request_options[:debug_return_type] || 'Abtesting::ABTest')
    end

    # List all A/B tests.
    #
    # Required API Key ACLs:
    #   - analytics
    # @param offset [Integer] Position of the first item to return. (default to 0)
    # @param limit [Integer] Number of items to return. (default to 10)
    # @param index_prefix [String] Only return A/B tests for indices starting with this prefix.
    # @param index_suffix [String] Only return A/B tests for indices ending with this suffix.
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Http::Response] the response
    def list_ab_tests_with_http_info(offset = nil, limit = nil, index_prefix = nil, index_suffix = nil, request_options = {})
      if @api_client.config.client_side_validation && !offset.nil? && offset < 0
        raise ArgumentError, 'invalid value for ""offset"" when calling AbtestingClient.list_ab_tests, must be greater than or equal to 0.'
      end

      path = '/2/abtests'
      query_params = {}
      query_params[:offset] = offset unless offset.nil?
      query_params[:limit] = limit unless limit.nil?
      query_params[:indexPrefix] = index_prefix unless index_prefix.nil?
      query_params[:indexSuffix] = index_suffix unless index_suffix.nil?
      query_params = query_params.merge(request_options[:query_params]) unless request_options[:query_params].nil?
      header_params = {}
      header_params = header_params.merge(request_options[:header_params]) unless request_options[:header_params].nil?

      post_body = request_options[:debug_body]

      new_options = request_options.merge(
        :operation => :'AbtestingClient.list_ab_tests',
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :use_read_transporter => false
      )

      @api_client.call_api(:GET, path, new_options)
    end

    # List all A/B tests.
    #
    # Required API Key ACLs:
    #   - analytics
    # @param offset [Integer] Position of the first item to return. (default to 0)
    # @param limit [Integer] Number of items to return. (default to 10)
    # @param index_prefix [String] Only return A/B tests for indices starting with this prefix.
    # @param index_suffix [String] Only return A/B tests for indices ending with this suffix.
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [ListABTestsResponse]
    def list_ab_tests(offset = nil, limit = nil, index_prefix = nil, index_suffix = nil, request_options = {})
      response = list_ab_tests_with_http_info(offset, limit, index_prefix, index_suffix, request_options)
      @api_client.deserialize(response.body, request_options[:debug_return_type] || 'Abtesting::ListABTestsResponse')
    end

    # If stopped, the test is over and can&#39;t be restarted. There is now only one index, receiving 100% of all search requests. The data gathered for stopped A/B tests is retained. To determine the &#x60;id&#x60; for an A/B test, use the [&#x60;listABTests&#x60; operation](#tag/abtest/operation/listABTests).
    #
    # Required API Key ACLs:
    #   - editSettings
    # @param id [Integer] Unique A/B test ID. (required)
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [Http::Response] the response
    def stop_ab_test_with_http_info(id, request_options = {})
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Parameter `id` is required when calling `stop_ab_test`."
      end

      path = '/2/abtests/{id}/stop'.sub('{' + 'id' + '}', Transport.encode_uri(id.to_s))
      query_params = {}
      query_params = query_params.merge(request_options[:query_params]) unless request_options[:query_params].nil?
      header_params = {}
      header_params = header_params.merge(request_options[:header_params]) unless request_options[:header_params].nil?

      post_body = request_options[:debug_body]

      new_options = request_options.merge(
        :operation => :'AbtestingClient.stop_ab_test',
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :use_read_transporter => false
      )

      @api_client.call_api(:POST, path, new_options)
    end

    # If stopped, the test is over and can't be restarted. There is now only one index, receiving 100% of all search requests. The data gathered for stopped A/B tests is retained. To determine the `id` for an A/B test, use the [`listABTests` operation](#tag/abtest/operation/listABTests).
    #
    # Required API Key ACLs:
    #   - editSettings
    # @param id [Integer] Unique A/B test ID. (required)
    # @param request_options: The request options to send along with the query, they will be merged with the transporter base parameters (headers, query params, timeouts, etc.). (optional)
    # @return [ABTestResponse]
    def stop_ab_test(id, request_options = {})
      response = stop_ab_test_with_http_info(id, request_options)
      @api_client.deserialize(response.body, request_options[:debug_return_type] || 'Abtesting::ABTestResponse')
    end
  end
end
