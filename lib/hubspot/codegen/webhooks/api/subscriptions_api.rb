=begin
#Webhooks API

#Provides a way for apps to subscribe to certain change events in HubSpot. Once configured, apps will receive event payloads containing details about the changes at a specified target URL. There can only be one target URL for receiving event notifications per app.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Webhooks
    class SubscriptionsApi
      attr_accessor :api_client

      def initialize(api_client = ApiClient.default)
        @api_client = api_client
      end
      # @param subscription_id [Integer] 
      # @param app_id [Integer] 
      # @param [Hash] opts the optional parameters
      # @return [nil]
      def archive(subscription_id, app_id, opts = {})
        archive_with_http_info(subscription_id, app_id, opts)
        nil
      end

      # @param subscription_id [Integer] 
      # @param app_id [Integer] 
      # @param [Hash] opts the optional parameters
      # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
      def archive_with_http_info(subscription_id, app_id, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: SubscriptionsApi.archive ...'
        end
        # verify the required parameter 'subscription_id' is set
        if @api_client.config.client_side_validation && subscription_id.nil?
          fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SubscriptionsApi.archive"
        end
        # verify the required parameter 'app_id' is set
        if @api_client.config.client_side_validation && app_id.nil?
          fail ArgumentError, "Missing the required parameter 'app_id' when calling SubscriptionsApi.archive"
        end
        # resource path
        local_var_path = '/webhooks/v3/{appId}/subscriptions/{subscriptionId}'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s)).sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

        # query parameters
        query_params = opts[:query_params] || {}

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['*/*'])

        # form parameters
        form_params = opts[:form_params] || {}

        # http body (model)
        post_body = opts[:body] 

        # return_type
        return_type = opts[:return_type] 

        # auth_names
        auth_names = opts[:auth_names] || ['developer_hapikey']

        new_options = opts.merge(
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: SubscriptionsApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end

      # @param app_id [Integer] 
      # @param subscription_create_request [SubscriptionCreateRequest] 
      # @param [Hash] opts the optional parameters
      # @return [SubscriptionResponse]
      def create(app_id, subscription_create_request, opts = {})
        data, _status_code, _headers = create_with_http_info(app_id, subscription_create_request, opts)
        data
      end

      # @param app_id [Integer] 
      # @param subscription_create_request [SubscriptionCreateRequest] 
      # @param [Hash] opts the optional parameters
      # @return [Array<(SubscriptionResponse, Integer, Hash)>] SubscriptionResponse data, response status code and response headers
      def create_with_http_info(app_id, subscription_create_request, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: SubscriptionsApi.create ...'
        end
        # verify the required parameter 'app_id' is set
        if @api_client.config.client_side_validation && app_id.nil?
          fail ArgumentError, "Missing the required parameter 'app_id' when calling SubscriptionsApi.create"
        end
        # verify the required parameter 'subscription_create_request' is set
        if @api_client.config.client_side_validation && subscription_create_request.nil?
          fail ArgumentError, "Missing the required parameter 'subscription_create_request' when calling SubscriptionsApi.create"
        end
        # resource path
        local_var_path = '/webhooks/v3/{appId}/subscriptions'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

        # query parameters
        query_params = opts[:query_params] || {}

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

        # form parameters
        form_params = opts[:form_params] || {}

        # http body (model)
        post_body = opts[:body] || @api_client.object_to_http_body(subscription_create_request) 

        # return_type
        return_type = opts[:return_type] || 'SubscriptionResponse' 

        # auth_names
        auth_names = opts[:auth_names] || ['developer_hapikey']

        new_options = opts.merge(
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: SubscriptionsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end

      # @param app_id [Integer] 
      # @param [Hash] opts the optional parameters
      # @return [SubscriptionListResponse]
      def get_all(app_id, opts = {})
        data, _status_code, _headers = get_all_with_http_info(app_id, opts)
        data
      end

      # @param app_id [Integer] 
      # @param [Hash] opts the optional parameters
      # @return [Array<(SubscriptionListResponse, Integer, Hash)>] SubscriptionListResponse data, response status code and response headers
      def get_all_with_http_info(app_id, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: SubscriptionsApi.get_all ...'
        end
        # verify the required parameter 'app_id' is set
        if @api_client.config.client_side_validation && app_id.nil?
          fail ArgumentError, "Missing the required parameter 'app_id' when calling SubscriptionsApi.get_all"
        end
        # resource path
        local_var_path = '/webhooks/v3/{appId}/subscriptions'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

        # query parameters
        query_params = opts[:query_params] || {}

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

        # form parameters
        form_params = opts[:form_params] || {}

        # http body (model)
        post_body = opts[:body] 

        # return_type
        return_type = opts[:return_type] || 'SubscriptionListResponse' 

        # auth_names
        auth_names = opts[:auth_names] || ['developer_hapikey']

        new_options = opts.merge(
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: SubscriptionsApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end

      # @param subscription_id [Integer] 
      # @param app_id [Integer] 
      # @param [Hash] opts the optional parameters
      # @return [SubscriptionResponse]
      def get_by_id(subscription_id, app_id, opts = {})
        data, _status_code, _headers = get_by_id_with_http_info(subscription_id, app_id, opts)
        data
      end

      # @param subscription_id [Integer] 
      # @param app_id [Integer] 
      # @param [Hash] opts the optional parameters
      # @return [Array<(SubscriptionResponse, Integer, Hash)>] SubscriptionResponse data, response status code and response headers
      def get_by_id_with_http_info(subscription_id, app_id, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: SubscriptionsApi.get_by_id ...'
        end
        # verify the required parameter 'subscription_id' is set
        if @api_client.config.client_side_validation && subscription_id.nil?
          fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SubscriptionsApi.get_by_id"
        end
        # verify the required parameter 'app_id' is set
        if @api_client.config.client_side_validation && app_id.nil?
          fail ArgumentError, "Missing the required parameter 'app_id' when calling SubscriptionsApi.get_by_id"
        end
        # resource path
        local_var_path = '/webhooks/v3/{appId}/subscriptions/{subscriptionId}'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s)).sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

        # query parameters
        query_params = opts[:query_params] || {}

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

        # form parameters
        form_params = opts[:form_params] || {}

        # http body (model)
        post_body = opts[:body] 

        # return_type
        return_type = opts[:return_type] || 'SubscriptionResponse' 

        # auth_names
        auth_names = opts[:auth_names] || ['developer_hapikey']

        new_options = opts.merge(
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: SubscriptionsApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end

      # @param subscription_id [Integer] 
      # @param app_id [Integer] 
      # @param subscription_patch_request [SubscriptionPatchRequest] 
      # @param [Hash] opts the optional parameters
      # @return [SubscriptionResponse]
      def update(subscription_id, app_id, subscription_patch_request, opts = {})
        data, _status_code, _headers = update_with_http_info(subscription_id, app_id, subscription_patch_request, opts)
        data
      end

      # @param subscription_id [Integer] 
      # @param app_id [Integer] 
      # @param subscription_patch_request [SubscriptionPatchRequest] 
      # @param [Hash] opts the optional parameters
      # @return [Array<(SubscriptionResponse, Integer, Hash)>] SubscriptionResponse data, response status code and response headers
      def update_with_http_info(subscription_id, app_id, subscription_patch_request, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: SubscriptionsApi.update ...'
        end
        # verify the required parameter 'subscription_id' is set
        if @api_client.config.client_side_validation && subscription_id.nil?
          fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SubscriptionsApi.update"
        end
        # verify the required parameter 'app_id' is set
        if @api_client.config.client_side_validation && app_id.nil?
          fail ArgumentError, "Missing the required parameter 'app_id' when calling SubscriptionsApi.update"
        end
        # verify the required parameter 'subscription_patch_request' is set
        if @api_client.config.client_side_validation && subscription_patch_request.nil?
          fail ArgumentError, "Missing the required parameter 'subscription_patch_request' when calling SubscriptionsApi.update"
        end
        # resource path
        local_var_path = '/webhooks/v3/{appId}/subscriptions/{subscriptionId}'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s)).sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

        # query parameters
        query_params = opts[:query_params] || {}

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

        # form parameters
        form_params = opts[:form_params] || {}

        # http body (model)
        post_body = opts[:body] || @api_client.object_to_http_body(subscription_patch_request) 

        # return_type
        return_type = opts[:return_type] || 'SubscriptionResponse' 

        # auth_names
        auth_names = opts[:auth_names] || ['developer_hapikey']

        new_options = opts.merge(
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: SubscriptionsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end

      # @param app_id [Integer] 
      # @param batch_input_subscription_batch_update_request [BatchInputSubscriptionBatchUpdateRequest] 
      # @param [Hash] opts the optional parameters
      # @return [BatchResponseSubscriptionResponse]
      def update_batch(app_id, batch_input_subscription_batch_update_request, opts = {})
        data, _status_code, _headers = update_batch_with_http_info(app_id, batch_input_subscription_batch_update_request, opts)
        data
      end

      # @param app_id [Integer] 
      # @param batch_input_subscription_batch_update_request [BatchInputSubscriptionBatchUpdateRequest] 
      # @param [Hash] opts the optional parameters
      # @return [Array<(BatchResponseSubscriptionResponse, Integer, Hash)>] BatchResponseSubscriptionResponse data, response status code and response headers
      def update_batch_with_http_info(app_id, batch_input_subscription_batch_update_request, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: SubscriptionsApi.update_batch ...'
        end
        # verify the required parameter 'app_id' is set
        if @api_client.config.client_side_validation && app_id.nil?
          fail ArgumentError, "Missing the required parameter 'app_id' when calling SubscriptionsApi.update_batch"
        end
        # verify the required parameter 'batch_input_subscription_batch_update_request' is set
        if @api_client.config.client_side_validation && batch_input_subscription_batch_update_request.nil?
          fail ArgumentError, "Missing the required parameter 'batch_input_subscription_batch_update_request' when calling SubscriptionsApi.update_batch"
        end
        # resource path
        local_var_path = '/webhooks/v3/{appId}/subscriptions/batch/update'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

        # query parameters
        query_params = opts[:query_params] || {}

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

        # form parameters
        form_params = opts[:form_params] || {}

        # http body (model)
        post_body = opts[:body] || @api_client.object_to_http_body(batch_input_subscription_batch_update_request) 

        # return_type
        return_type = opts[:return_type] || 'BatchResponseSubscriptionResponse' 

        # auth_names
        auth_names = opts[:auth_names] || ['developer_hapikey']

        new_options = opts.merge(
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: SubscriptionsApi#update_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end
