=begin
#Line Items

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Crm::LineItems::ErrorCategory
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ErrorCategory' do
  before do
    # run before each test
    @instance = Hubspot::Crm::LineItems::ErrorCategory.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErrorCategory' do
    it 'should create an instance of ErrorCategory' do
      expect(@instance).to be_instance_of(Hubspot::Crm::LineItems::ErrorCategory)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "http_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CONTINUE", "SWITCHING_PROTOCOLS", "PROCESSING", "OK", "CREATED", "ACCEPTED", "NON_AUTHORITATIVE_INFORMATION", "NO_CONTENT", "RESET_CONTENT", "PARTIAL_CONTENT", "MULTI_STATUS", "ALREADY_REPORTED", "IM_USED", "MULTIPLE_CHOICES", "MOVED_PERMANENTLY", "FOUND", "SEE_OTHER", "NOT_MODIFIED", "USE_PROXY", "TEMPORARY_REDIRECT", "PERMANENT_REDIRECT", "BAD_REQUEST", "UNAUTHORIZED", "PAYMENT_REQUIRED", "FORBIDDEN", "NOT_FOUND", "METHOD_NOT_ALLOWED", "NOT_ACCEPTABLE", "PROXY_AUTHENTICATION_REQUIRED", "REQUEST_TIMEOUT", "CONFLICT", "GONE", "LENGTH_REQUIRED", "PRECONDITION_FAILED", "REQUEST_ENTITY_TOO_LARGE", "REQUEST_URI_TOO_LONG", "UNSUPPORTED_MEDIA_TYPE", "REQUESTED_RANGE_NOT_SATISFIABLE", "EXPECTATION_FAILED", "IM_A_TEAPOT", "MISDIRECTED_REQUEST", "UNPROCESSABLE_ENTITY", "LOCKED", "FAILED_DEPENDENCY", "UPGRADE_REQUIRED", "PRECONDITION_REQUIRED", "TOO_MANY_REQUESTS", "REQUEST_HEADERS_FIELDS_TOO_LARGE", "INTERNAL_STALE_SERVICE_DISCOVERY", "UNAVAILABLE_FOR_LEGAL_REASONS", "MIGRATION_IN_PROGRESS", "INTERNAL_SERVER_ERROR", "NOT_IMPLEMENTED", "BAD_GATEWAY", "SERVICE_UNAVAILABLE", "GATEWAY_TIMEOUT", "HTTP_VERSION_NOT_SUPPORTED", "VARIANT_ALSO_NEGOTIATES", "INSUFFICIENT_STORAGE", "LOOP_DETECTED", "NOT_EXTENDED", "NETWORK_AUTHENTICATION_REQUIRED"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.http_status = value }.not_to raise_error
      # end
    end
  end

end
