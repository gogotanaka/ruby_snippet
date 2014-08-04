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
end
module_function :post
module_function :to_json
module_function :to_hash
