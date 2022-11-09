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
      class MetadataApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Get the metadata for a file
        # Gets the metadata object for the file at the specified path in the specified environment.
        # @param environment [String] The environment of the file (\&quot;draft\&quot; or \&quot;published\&quot;).
        # @param path [String] The file system location of the file.
        # @param [Hash] opts the optional parameters
        # @return [AssetFileMetadata]
        def get(environment, path, opts = {})
          data, _status_code, _headers = get_with_http_info(environment, path, opts)
          data
        end

        # Get the metadata for a file
        # Gets the metadata object for the file at the specified path in the specified environment.
        # @param environment [String] The environment of the file (\&quot;draft\&quot; or \&quot;published\&quot;).
        # @param path [String] The file system location of the file.
        # @param [Hash] opts the optional parameters
        # @return [Array<(AssetFileMetadata, Integer, Hash)>] AssetFileMetadata data, response status code and response headers
        def get_with_http_info(environment, path, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: MetadataApi.get ...'
          end
          # verify the required parameter 'environment' is set
          if @api_client.config.client_side_validation && environment.nil?
            fail ArgumentError, "Missing the required parameter 'environment' when calling MetadataApi.get"
          end
          # verify the required parameter 'path' is set
          if @api_client.config.client_side_validation && path.nil?
            fail ArgumentError, "Missing the required parameter 'path' when calling MetadataApi.get"
          end
          pattern = Regexp.new(/.+/)
          if @api_client.config.client_side_validation && path !~ pattern
            fail ArgumentError, "invalid value for 'path' when calling MetadataApi.get, must conform to the pattern #{pattern}."
          end

          # resource path
          local_var_path = '/cms/v3/source-code/{environment}/metadata/{path}'.sub('{' + 'environment' + '}', CGI.escape(environment.to_s)).sub('{' + 'path' + '}', CGI.escape(path.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'AssetFileMetadata'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey']

          new_options = opts.merge(
            :operation => :"MetadataApi.get",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: MetadataApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
