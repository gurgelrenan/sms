require 'dotenv/load'
require 'aws-sdk-sns'

sns = Aws::SNS::Client.new(region: ENV['REGION'],
                           access_key_id: ENV['AWS_ACCESS_KEY_ID'],
                           secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'])

phone = '+55999999999'
message = 'Hello world!'

puts sns.publish(phone_number: phone,
                 message: message)
