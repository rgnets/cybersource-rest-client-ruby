=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::NotificationOfChangesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NotificationOfChangesApi' do
  before do
    # run before each test
    @instance = CyberSource::NotificationOfChangesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NotificationOfChangesApi' do
    it 'should create an instance of NotificationOfChangesApi' do
      expect(@instance).to be_instance_of(CyberSource::NotificationOfChangesApi)
    end
  end

  # unit tests for get_notification_of_change_report
  # Get Notification Of Changes
  # Notification of Change Report
  # @param start_time Valid report Start Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX 
  # @param end_time Valid report End Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX 
  # @param [Hash] opts the optional parameters
  # @return [ReportingV3NotificationofChangesGet200Response]
  describe 'get_notification_of_change_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end