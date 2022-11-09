=begin
#Accounting Extension

#These APIs allow you to interact with HubSpot's Accounting Extension. It allows you to: * Specify the URLs that HubSpot will use when making webhook requests to your external accounting system. * Respond to webhook calls made to your external accounting system by HubSpot 

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

module Hubspot
  module Crm
    module Extensions
      module Accounting
        class ApiError < ::StandardError
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
end
