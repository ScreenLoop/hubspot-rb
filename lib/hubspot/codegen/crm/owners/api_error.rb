=begin
#CRM Owners

#HubSpot uses **owners** to assign CRM objects to specific people in your organization. The endpoints described here are used to get a list of the owners that are available for an account. To assign an owner to an object, set the hubspot_owner_id property using the appropriate CRM object update or create a request.  If teams are available for your HubSpot tier, these endpoints will also indicate which team(s) an owner can access, as well as which team is the owner's primary team.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

module Hubspot
  module Crm
    module Owners
      class ApiError < StandardError
        attr_reader :code, :response_headers, :response_body

        # Usage examples:
        #   ApiError.new
        #   ApiError.new("message")
        #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
        #   ApiError.new(:code => 404, :message => "Not Found")
        def initialize(arg = nil)
          if arg.is_a? Hash
            if arg.key?(:message) || arg.key?('message')
              super(arg[:message] || arg['message'])
            else
              super arg
            end

            arg.each do |k, v|
              instance_variable_set "@#{k}", v
            end
          else
            super arg
          end
        end

        # Override to_s to display a friendly error message
        def to_s
          message
        end

        def message
          if @message.nil?
            msg = "Error message: the server returns an error"
          else
            msg = @message
          end

          msg += "\nHTTP status code: #{code}" if code
          msg += "\nResponse headers: #{response_headers}" if response_headers
          msg += "\nResponse body: #{response_body}" if response_body

          msg
        end
      end
    end
  end
end
