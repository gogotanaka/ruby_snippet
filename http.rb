require 'faraday'
conn = Faraday.new(url: 'http://localhost:3000/api/v1/front', headers: headers) do |faraday|
  faraday.request  :url_encoded             # form-encode POST params
  faraday.response :logger                  # log requests to STDOUT
  faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
end

headers = {
        'X-Auth-Id' => "1",
        'X-Auth-Token' => "BAh7CDoGdiIl32CE+zk1y2MFj9t22ZmoCG7jKLO8RhkSXhRZaw/5kxM6BnIiAYBMr8nOvYslJ5pSRh6BjItVf7XC91nWIGX0GUGiW6jdU3vl8O0k4CxU9K7MrdmBt7BakJ2xuHcfHsFE9FA4JyNC6SIIf+ucOZAM+cbD55Gh3t3qOJ5F75NmjXeuz14WECN23VFedpPT4hJbpxpqX/s+MyZFo4bHJkD1lmxNe1+yrzoGdGwrB5mlkVM=--5056826a4199cb3dcb7fb66f581333190e40c34",
      }

: 1
:





conn.post '/orders', hash

end

class Client
  def initialize(headers, )
end

## GET ##

response = conn.get '/nigiri/sake.json'     # GET http://sushi.com/nigiri/sake.json
response.body

conn.get '/nigiri', { :name => 'Maguro' }   # GET http://sushi.com/nigiri?name=Maguro

conn.get do |req|                           # GET http://sushi.com/search?page=2&limit=100
  req.url '/search', :page => 2
  req.params['limit'] = 100
end

## POST ##

conn.post '/nigiri', { :name => 'Maguro' }  # POST "name=maguro" to http://sushi.com/nigiri

# post payload as JSON instead of "www-form-urlencoded" encoding:
conn.post do |req|
  req.url '/nigiri'
  req.headers['Content-Type'] = 'application/json'
  req.body = '{ "name": "Unagi" }'
end

## Per-request options ##

conn.get do |req|
  req.url '/search'
  req.options.timeout = 5           # open/read timeout in seconds
  req.options.open_timeout = 2      # connection open timeout in seconds
end



require 'net/http'
require 'json'

module Http
  def post(url, hash)
    uri = URI(url)
    res = Net::HTTP.post_form(uri, hash)
  rescue => e
    puts "There was an error"
    puts e.inspect
  end

  def to_json(hash)
    hash.to_json
  end

  def to_hash(json)
    JSON.parse(json)
  end
  module_function :post
  module_function :to_json
  module_function :to_hash
end

{
  "order" => {
    "user_location_id"=> 1,
    "shop_id"=> 1,
    "details_attributes"=> [
      {
        "menu_id"=> 41,
        "quantity"=> 1,
      }
    ]
  }
}
