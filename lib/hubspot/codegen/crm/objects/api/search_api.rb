=begin
#CRM Objects

#CRM objects such as companies, contacts, deals, line items, products, tickets, and quotes are standard objects in HubSpot’s CRM. These core building blocks support custom properties, store critical information, and play a central role in the HubSpot application.  ## Supported Object Types  This API provides access to collections of CRM objects, which return a map of property names to values. Each object type has its own set of default properties, which can be found by exploring the [CRM Object Properties API](https://developers.hubspot.com/docs/methods/crm-properties/crm-properties-overview).  |Object Type |Properties returned by default | |--|--| | `companies` | `name`, `domain` | | `contacts` | `firstname`, `lastname`, `email` | | `deals` | `dealname`, `amount`, `closedate`, `pipeline`, `dealstage` | | `products` | `name`, `description`, `price` | | `tickets` | `content`, `hs_pipeline`, `hs_pipeline_stage`, `hs_ticket_category`, `hs_ticket_priority`, `subject` |  Find a list of all properties for an object type using the [CRM Object Properties](https://developers.hubspot.com/docs/methods/crm-properties/get-properties) API. e.g. `GET https://api.hubapi.com/properties/v2/companies/properties`. Change the properties returned in the response using the `properties` array in the request body.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Objects
      class SearchApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # @param object_type [String] 
        # @param public_object_search_request [PublicObjectSearchRequest] 
        # @param [Hash] opts the optional parameters
        # @return [CollectionResponseWithTotalSimplePublicObjectForwardPaging]
        def do_search(object_type, public_object_search_request, opts = {})
          data, _status_code, _headers = do_search_with_http_info(object_type, public_object_search_request, opts)
          data
        end

        # @param object_type [String] 
        # @param public_object_search_request [PublicObjectSearchRequest] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(CollectionResponseWithTotalSimplePublicObjectForwardPaging, Integer, Hash)>] CollectionResponseWithTotalSimplePublicObjectForwardPaging data, response status code and response headers
        def do_search_with_http_info(object_type, public_object_search_request, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: SearchApi.do_search ...'
          end
          # verify the required parameter 'object_type' is set
          if @api_client.config.client_side_validation && object_type.nil?
            fail ArgumentError, "Missing the required parameter 'object_type' when calling SearchApi.do_search"
          end
          # verify the required parameter 'public_object_search_request' is set
          if @api_client.config.client_side_validation && public_object_search_request.nil?
            fail ArgumentError, "Missing the required parameter 'public_object_search_request' when calling SearchApi.do_search"
          end
          # resource path
          local_var_path = '/crm/v3/objects/{objectType}/search'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(public_object_search_request)

          # return_type
          return_type = opts[:debug_return_type] || 'CollectionResponseWithTotalSimplePublicObjectForwardPaging'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"SearchApi.do_search",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: SearchApi#do_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
