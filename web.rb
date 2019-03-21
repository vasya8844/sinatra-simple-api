require 'sinatra'
require 'json'

get '/list' do
  ['test', 'test22', 'test3'].to_json
end

get '/v1.0/customer/:customer_number/ips' do
  # halt 404, {'message' => 'General failure'}.to_json

  results = {
    'C0803540608' => ['204.120.0.15', 'for.mx', '@', '204.120.0.16'],
    'C0011' => ['127.0.0.1', 'mx', 'a'],
  }[params['customer_number']]
  results.to_json
end
