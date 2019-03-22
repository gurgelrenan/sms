require 'dotenv/load'
require 'aws-sdk'

sns = Aws::SNS::Client.new(region: ENV['REGION'],
                           access_key_id: ENV['AWS_ACCESS_KEY_ID'],
                           secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'])

puts sns.publish(phone_number: '+5585996554511', message: 'E ae Josias. Kd o Chá de casa nova? Acesse: https://agendaedu.com')
