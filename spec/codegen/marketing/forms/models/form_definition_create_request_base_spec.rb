=begin
#FormsExternalService

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Marketing::Forms::FormDefinitionCreateRequestBase
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FormDefinitionCreateRequestBase' do
  before do
    # run before each test
    @instance = Hubspot::Marketing::Forms::FormDefinitionCreateRequestBase.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FormDefinitionCreateRequestBase' do
    it 'should create an instance of FormDefinitionCreateRequestBase' do
      expect(@instance).to be_instance_of(Hubspot::Marketing::Forms::FormDefinitionCreateRequestBase)
    end
  end
end
