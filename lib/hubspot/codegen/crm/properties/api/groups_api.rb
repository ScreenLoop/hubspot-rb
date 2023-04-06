=begin
#Properties

#All HubSpot objects store data in default and custom properties. These endpoints provide access to read and modify object properties in HubSpot.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Properties
      class GroupsApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Archive a property group
        # Move a property group identified by {groupName} to the recycling bin.
        # @param object_type [String] 
        # @param group_name [String] 
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(object_type, group_name, opts = {})
          archive_with_http_info(object_type, group_name, opts)
          nil
        end

        # Archive a property group
        # Move a property group identified by {groupName} to the recycling bin.
        # @param object_type [String] 
        # @param group_name [String] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(object_type, group_name, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: GroupsApi.archive ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling GroupsApi.archive"
          end
          # verify the required parameter 'group_name' is set
          if @api_client.config.client_side_validation && group_name.nil?
            fail ArgumentError, "Missing the required parameter 'group_name' when calling GroupsApi.archive"
          end
          # resource path
          local_var_path = '/crm/v3/properties/{objectType}/groups/{groupName}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'groupName' + '}', CGI.escape(group_name.to_s))

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
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"GroupsApi.archive",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: GroupsApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create a property group
        # Create and return a copy of a new property group.
        # @param object_type [String] 
        # @param property_group_create [PropertyGroupCreate] 
        # @param [Hash] opts the optional parameters
        # @return [PropertyGroup]
        def create(object_type, property_group_create, opts = {})
          data, _status_code, _headers = create_with_http_info(object_type, property_group_create, opts)
          data
        end

        # Create a property group
        # Create and return a copy of a new property group.
        # @param object_type [String] 
        # @param property_group_create [PropertyGroupCreate] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(PropertyGroup, Integer, Hash)>] PropertyGroup data, response status code and response headers
        def create_with_http_info(object_type, property_group_create, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: GroupsApi.create ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling GroupsApi.create"
          end
          # verify the required parameter 'property_group_create' is set
          if @api_client.config.client_side_validation && property_group_create.nil?
            fail ArgumentError, "Missing the required parameter 'property_group_create' when calling GroupsApi.create"
          end
          # resource path
          local_var_path = '/crm/v3/properties/{objectType}/groups'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          content_type = @api_client.select_header_content_type(['application/json'])
          if !content_type.nil?
              header_params['Content-Type'] = content_type
          end

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body] || @api_client.object_to_http_body(property_group_create)

          # return_type
          return_type = opts[:debug_return_type] || 'PropertyGroup'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"GroupsApi.create",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: GroupsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Read all property groups
        # Read all existing property groups for the specified object type and HubSpot account.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @return [CollectionResponsePropertyGroupNoPaging]
        def get_all(object_type, opts = {})
          data, _status_code, _headers = get_all_with_http_info(object_type, opts)
          data
        end

        # Read all property groups
        # Read all existing property groups for the specified object type and HubSpot account.
        # @param object_type [String] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(CollectionResponsePropertyGroupNoPaging, Integer, Hash)>] CollectionResponsePropertyGroupNoPaging data, response status code and response headers
        def get_all_with_http_info(object_type, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: GroupsApi.get_all ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling GroupsApi.get_all"
          end
          # resource path
          local_var_path = '/crm/v3/properties/{objectType}/groups'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

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
          return_type = opts[:debug_return_type] || 'CollectionResponsePropertyGroupNoPaging'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"GroupsApi.get_all",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: GroupsApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Read a property group
        # Read a property group identified by {groupName}.
        # @param object_type [String] 
        # @param group_name [String] 
        # @param [Hash] opts the optional parameters
        # @return [PropertyGroup]
        def get_by_name(object_type, group_name, opts = {})
          data, _status_code, _headers = get_by_name_with_http_info(object_type, group_name, opts)
          data
        end

        # Read a property group
        # Read a property group identified by {groupName}.
        # @param object_type [String] 
        # @param group_name [String] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(PropertyGroup, Integer, Hash)>] PropertyGroup data, response status code and response headers
        def get_by_name_with_http_info(object_type, group_name, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: GroupsApi.get_by_name ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling GroupsApi.get_by_name"
          end
          # verify the required parameter 'group_name' is set
          if @api_client.config.client_side_validation && group_name.nil?
            fail ArgumentError, "Missing the required parameter 'group_name' when calling GroupsApi.get_by_name"
          end
          # resource path
          local_var_path = '/crm/v3/properties/{objectType}/groups/{groupName}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'groupName' + '}', CGI.escape(group_name.to_s))

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
          return_type = opts[:debug_return_type] || 'PropertyGroup'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"GroupsApi.get_by_name",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: GroupsApi#get_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update a property group
        # Perform a partial update of a property group identified by {groupName}. Provided fields will be overwritten.
        # @param object_type [String] 
        # @param group_name [String] 
        # @param property_group_update [PropertyGroupUpdate] 
        # @param [Hash] opts the optional parameters
        # @return [PropertyGroup]
        def update(object_type, group_name, property_group_update, opts = {})
          data, _status_code, _headers = update_with_http_info(object_type, group_name, property_group_update, opts)
          data
        end

        # Update a property group
        # Perform a partial update of a property group identified by {groupName}. Provided fields will be overwritten.
        # @param object_type [String] 
        # @param group_name [String] 
        # @param property_group_update [PropertyGroupUpdate] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(PropertyGroup, Integer, Hash)>] PropertyGroup data, response status code and response headers
        def update_with_http_info(object_type, group_name, property_group_update, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: GroupsApi.update ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling GroupsApi.update"
          end
          # verify the required parameter 'group_name' is set
          if @api_client.config.client_side_validation && group_name.nil?
            fail ArgumentError, "Missing the required parameter 'group_name' when calling GroupsApi.update"
          end
          # verify the required parameter 'property_group_update' is set
          if @api_client.config.client_side_validation && property_group_update.nil?
            fail ArgumentError, "Missing the required parameter 'property_group_update' when calling GroupsApi.update"
          end
          # resource path
          local_var_path = '/crm/v3/properties/{objectType}/groups/{groupName}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'groupName' + '}', CGI.escape(group_name.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          content_type = @api_client.select_header_content_type(['application/json'])
          if !content_type.nil?
              header_params['Content-Type'] = content_type
          end

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body] || @api_client.object_to_http_body(property_group_update)

          # return_type
          return_type = opts[:debug_return_type] || 'PropertyGroup'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"GroupsApi.update",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: GroupsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
