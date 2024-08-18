require 'aws-sdk-dynamodb'

class DynamodbService
    def initialize
        @dynamodb = Aws::DynamoDB::Client.new(region: 'us-east-1')
    end

    def get_certificados
        @dynamodb.scan(table_name: 'CERTIFICADOS').items
    end