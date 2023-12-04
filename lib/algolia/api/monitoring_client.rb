# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

require 'cgi'

module Algolia
  class MonitoringClient
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @return [Object]
    def del(path, opts = {})
      data, _status_code, _headers = del_with_http_info(path, opts)
      data
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def del_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.del ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling MonitoringClient.del"
      end
      # resource path
      local_var_path = '/1{path}'.sub('{' + 'path' + '}', CGI.escape(path.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'parameters'] = opts[:'parameters'] if !opts[:'parameters'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.del",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#del\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @return [Object]
    def get(path, opts = {})
      data, _status_code, _headers = get_with_http_info(path, opts)
      data
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.get ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling MonitoringClient.get"
      end
      # resource path
      local_var_path = '/1{path}'.sub('{' + 'path' + '}', CGI.escape(path.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'parameters'] = opts[:'parameters'] if !opts[:'parameters'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List incidents for selected clusters.
    # List known incidents for selected clusters.
    # @param clusters [String] Subset of clusters, separated by comma.
    # @param [Hash] opts the optional parameters
    # @return [IncidentsResponse]
    def get_cluster_incidents(clusters, opts = {})
      data, _status_code, _headers = get_cluster_incidents_with_http_info(clusters, opts)
      data
    end

    # List incidents for selected clusters.
    # List known incidents for selected clusters.
    # @param clusters [String] Subset of clusters, separated by comma.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IncidentsResponse, Integer, Hash)>] IncidentsResponse data, response status code and response headers
    def get_cluster_incidents_with_http_info(clusters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.get_cluster_incidents ...'
      end
      # verify the required parameter 'clusters' is set
      if @api_client.config.client_side_validation && clusters.nil?
        fail ArgumentError, "Missing the required parameter 'clusters' when calling MonitoringClient.get_cluster_incidents"
      end
      # resource path
      local_var_path = '/1/incidents/{clusters}'.sub('{' + 'clusters' + '}', CGI.escape(clusters.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.get_cluster_incidents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#get_cluster_incidents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List statuses of selected clusters.
    # Report whether a cluster is operational.
    # @param clusters [String] Subset of clusters, separated by comma.
    # @param [Hash] opts the optional parameters
    # @return [StatusResponse]
    def get_cluster_status(clusters, opts = {})
      data, _status_code, _headers = get_cluster_status_with_http_info(clusters, opts)
      data
    end

    # List statuses of selected clusters.
    # Report whether a cluster is operational.
    # @param clusters [String] Subset of clusters, separated by comma.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StatusResponse, Integer, Hash)>] StatusResponse data, response status code and response headers
    def get_cluster_status_with_http_info(clusters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.get_cluster_status ...'
      end
      # verify the required parameter 'clusters' is set
      if @api_client.config.client_side_validation && clusters.nil?
        fail ArgumentError, "Missing the required parameter 'clusters' when calling MonitoringClient.get_cluster_status"
      end
      # resource path
      local_var_path = '/1/status/{clusters}'.sub('{' + 'clusters' + '}', CGI.escape(clusters.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StatusResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.get_cluster_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#get_cluster_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List incidents.
    # List known incidents for all clusters.
    # @param [Hash] opts the optional parameters
    # @return [IncidentsResponse]
    def get_incidents(opts = {})
      data, _status_code, _headers = get_incidents_with_http_info(opts)
      data
    end

    # List incidents.
    # List known incidents for all clusters.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IncidentsResponse, Integer, Hash)>] IncidentsResponse data, response status code and response headers
    def get_incidents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.get_incidents ...'
      end
      # resource path
      local_var_path = '/1/incidents'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.get_incidents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#get_incidents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get indexing times.
    # List the average times for indexing operations for selected clusters.
    # @param clusters [String] Subset of clusters, separated by comma.
    # @param [Hash] opts the optional parameters
    # @return [IndexingTimeResponse]
    def get_indexing_time(clusters, opts = {})
      data, _status_code, _headers = get_indexing_time_with_http_info(clusters, opts)
      data
    end

    # Get indexing times.
    # List the average times for indexing operations for selected clusters.
    # @param clusters [String] Subset of clusters, separated by comma.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IndexingTimeResponse, Integer, Hash)>] IndexingTimeResponse data, response status code and response headers
    def get_indexing_time_with_http_info(clusters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.get_indexing_time ...'
      end
      # verify the required parameter 'clusters' is set
      if @api_client.config.client_side_validation && clusters.nil?
        fail ArgumentError, "Missing the required parameter 'clusters' when calling MonitoringClient.get_indexing_time"
      end
      # resource path
      local_var_path = '/1/indexing/{clusters}'.sub('{' + 'clusters' + '}', CGI.escape(clusters.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IndexingTimeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.get_indexing_time",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#get_indexing_time\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List servers.
    # List the servers belonging to clusters.  The response depends on whether you authenticate your API request:  - With authentication, the response lists the servers assigned to your Algolia application's cluster.  - Without authentication, the response lists the servers for all Algolia clusters. 
    # @param [Hash] opts the optional parameters
    # @return [InventoryResponse]
    def get_inventory(opts = {})
      data, _status_code, _headers = get_inventory_with_http_info(opts)
      data
    end

    # List servers.
    # List the servers belonging to clusters.  The response depends on whether you authenticate your API request:  - With authentication, the response lists the servers assigned to your Algolia application&#39;s cluster.  - Without authentication, the response lists the servers for all Algolia clusters. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InventoryResponse, Integer, Hash)>] InventoryResponse data, response status code and response headers
    def get_inventory_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.get_inventory ...'
      end
      # resource path
      local_var_path = '/1/inventory/servers'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InventoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'appId']

      new_options = opts.merge(
        :operation => :"MonitoringClient.get_inventory",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#get_inventory\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get search latency times.
    # List the average latency for search requests for selected clusters.
    # @param clusters [String] Subset of clusters, separated by comma.
    # @param [Hash] opts the optional parameters
    # @return [LatencyResponse]
    def get_latency(clusters, opts = {})
      data, _status_code, _headers = get_latency_with_http_info(clusters, opts)
      data
    end

    # Get search latency times.
    # List the average latency for search requests for selected clusters.
    # @param clusters [String] Subset of clusters, separated by comma.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LatencyResponse, Integer, Hash)>] LatencyResponse data, response status code and response headers
    def get_latency_with_http_info(clusters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.get_latency ...'
      end
      # verify the required parameter 'clusters' is set
      if @api_client.config.client_side_validation && clusters.nil?
        fail ArgumentError, "Missing the required parameter 'clusters' when calling MonitoringClient.get_latency"
      end
      # resource path
      local_var_path = '/1/latency/{clusters}'.sub('{' + 'clusters' + '}', CGI.escape(clusters.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LatencyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.get_latency",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#get_latency\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get metrics for a given period.
    # Report the aggregate value of a metric for a selected period of time.
    # @param metric [Metric] Metric to report.  For more information about the individual metrics, see the response. To include all metrics, use &#x60;*&#x60; as the parameter. 
    # @param period [Period] Period over which to aggregate the metrics:  - &#x60;minute&#x60;. Aggregate the last minute. 1 data point per 10 seconds. - &#x60;hour&#x60;. Aggregate the last hour. 1 data point per minute. - &#x60;day&#x60;. Aggregate the last day. 1 data point per 10 minutes. - &#x60;week&#x60;. Aggregate the last week. 1 data point per hour. - &#x60;month&#x60;. Aggregate the last month. 1 data point per day. 
    # @param [Hash] opts the optional parameters
    # @return [InfrastructureResponse]
    def get_metrics(metric, period, opts = {})
      data, _status_code, _headers = get_metrics_with_http_info(metric, period, opts)
      data
    end

    # Get metrics for a given period.
    # Report the aggregate value of a metric for a selected period of time.
    # @param metric [Metric] Metric to report.  For more information about the individual metrics, see the response. To include all metrics, use &#x60;*&#x60; as the parameter. 
    # @param period [Period] Period over which to aggregate the metrics:  - &#x60;minute&#x60;. Aggregate the last minute. 1 data point per 10 seconds. - &#x60;hour&#x60;. Aggregate the last hour. 1 data point per minute. - &#x60;day&#x60;. Aggregate the last day. 1 data point per 10 minutes. - &#x60;week&#x60;. Aggregate the last week. 1 data point per hour. - &#x60;month&#x60;. Aggregate the last month. 1 data point per day. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InfrastructureResponse, Integer, Hash)>] InfrastructureResponse data, response status code and response headers
    def get_metrics_with_http_info(metric, period, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.get_metrics ...'
      end
      # verify the required parameter 'metric' is set
      if @api_client.config.client_side_validation && metric.nil?
        fail ArgumentError, "Missing the required parameter 'metric' when calling MonitoringClient.get_metrics"
      end
      # verify the required parameter 'period' is set
      if @api_client.config.client_side_validation && period.nil?
        fail ArgumentError, "Missing the required parameter 'period' when calling MonitoringClient.get_metrics"
      end
      # resource path
      local_var_path = '/1/infrastructure/{metric}/period/{period}'.sub('{' + 'metric' + '}', CGI.escape(metric.to_s)).sub('{' + 'period' + '}', CGI.escape(period.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InfrastructureResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.get_metrics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#get_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test the reachability of clusters.
    # Test whether clusters are reachable or not.
    # @param clusters [String] Subset of clusters, separated by comma.
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, Hash>]
    def get_reachability(clusters, opts = {})
      data, _status_code, _headers = get_reachability_with_http_info(clusters, opts)
      data
    end

    # Test the reachability of clusters.
    # Test whether clusters are reachable or not.
    # @param clusters [String] Subset of clusters, separated by comma.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, Hash>, Integer, Hash)>] Hash<String, Hash> data, response status code and response headers
    def get_reachability_with_http_info(clusters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.get_reachability ...'
      end
      # verify the required parameter 'clusters' is set
      if @api_client.config.client_side_validation && clusters.nil?
        fail ArgumentError, "Missing the required parameter 'clusters' when calling MonitoringClient.get_reachability"
      end
      # resource path
      local_var_path = '/1/reachability/{clusters}/probes'.sub('{' + 'clusters' + '}', CGI.escape(clusters.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Hash>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.get_reachability",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#get_reachability\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List cluster statuses.
    # Report whether clusters are operational.  The response depends on whether you authenticate your API request.  - With authentication, the response includes the status of the cluster assigned to your Algolia application.  - Without authentication, the response lists the statuses of all public Algolia clusters. 
    # @param [Hash] opts the optional parameters
    # @return [StatusResponse]
    def get_status(opts = {})
      data, _status_code, _headers = get_status_with_http_info(opts)
      data
    end

    # List cluster statuses.
    # Report whether clusters are operational.  The response depends on whether you authenticate your API request.  - With authentication, the response includes the status of the cluster assigned to your Algolia application.  - Without authentication, the response lists the statuses of all public Algolia clusters. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(StatusResponse, Integer, Hash)>] StatusResponse data, response status code and response headers
    def get_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.get_status ...'
      end
      # resource path
      local_var_path = '/1/status'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StatusResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'appId']

      new_options = opts.merge(
        :operation => :"MonitoringClient.get_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#get_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @option opts [Object] :body Parameters to send with the custom request.
    # @return [Object]
    def post(path, opts = {})
      data, _status_code, _headers = post_with_http_info(path, opts)
      data
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @option opts [Object] :body Parameters to send with the custom request.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def post_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.post ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling MonitoringClient.post"
      end
      # resource path
      local_var_path = '/1{path}'.sub('{' + 'path' + '}', CGI.escape(path.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'parameters'] = opts[:'parameters'] if !opts[:'parameters'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @option opts [Object] :body Parameters to send with the custom request.
    # @return [Object]
    def put(path, opts = {})
      data, _status_code, _headers = put_with_http_info(path, opts)
      data
    end

    # Send requests to the Algolia REST API.
    # This method allow you to send requests to the Algolia REST API.
    # @param path [String] Path of the endpoint, anything after \&quot;/1\&quot; must be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, Object>] :parameters Query parameters to apply to the current query.
    # @option opts [Object] :body Parameters to send with the custom request.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def put_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringClient.put ...'
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling MonitoringClient.put"
      end
      # resource path
      local_var_path = '/1{path}'.sub('{' + 'path' + '}', CGI.escape(path.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'parameters'] = opts[:'parameters'] if !opts[:'parameters'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"MonitoringClient.put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringClient#put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
