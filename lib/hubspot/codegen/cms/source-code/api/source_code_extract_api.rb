=begin
#CMS Source Code

#Endpoints for interacting with files in the CMS Developer File System. These files include HTML templates, CSS, JS, modules, and other assets which are used to create CMS content.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Cms
    module SourceCode
      class SourceCodeExtractApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # @param file_extract_request [FileExtractRequest] 
        # @param [Hash] opts the optional parameters
        # @return [TaskLocator]
        def do_async(file_extract_request, opts = {})
          data, _status_code, _headers = do_async_with_http_info(file_extract_request, opts)
          data
        end

        # @param file_extract_request [FileExtractRequest] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(TaskLocator, Integer, Hash)>] TaskLocator data, response status code and response headers
        def do_async_with_http_info(file_extract_request, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: SourceCodeExtractApi.do_async ...'
          end
          # verify the required parameter 'file_extract_request' is set
          if @api_client.config.client_side_validation && file_extract_request.nil?
            fail ArgumentError, "Missing the required parameter 'file_extract_request' when calling SourceCodeExtractApi.do_async"
          end
          # resource path
          local_var_path = '/cms/v3/source-code/extract/async'

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body] || @api_client.object_to_http_body(file_extract_request)

          # return_type
          return_type = opts[:debug_return_type] || 'TaskLocator'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey']

          new_options = opts.merge(
            :operation => :"SourceCodeExtractApi.do_async",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: SourceCodeExtractApi#do_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # @param task_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [ActionResponse]
        def get_async_status(task_id, opts = {})
          data, _status_code, _headers = get_async_status_with_http_info(task_id, opts)
          data
        end

        # @param task_id [Integer] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(ActionResponse, Integer, Hash)>] ActionResponse data, response status code and response headers
        def get_async_status_with_http_info(task_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: SourceCodeExtractApi.get_async_status ...'
          end
          # verify the required parameter 'task_id' is set
          if @api_client.config.client_side_validation && task_id.nil?
            fail ArgumentError, "Missing the required parameter 'task_id' when calling SourceCodeExtractApi.get_async_status"
          end
          # resource path
          local_var_path = '/cms/v3/source-code/extract/async/tasks/{taskId}/status'.sub('{' + 'taskId' + '}', CGI.escape(task_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'ActionResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey']

          new_options = opts.merge(
            :operation => :"SourceCodeExtractApi.get_async_status",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: SourceCodeExtractApi#get_async_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
