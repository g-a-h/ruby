#!/usr/local/env ruby 
# gh -2022 
# API.post 

require "uri"
require "net/http"

url = ARGV[0]
file = File.open("ARGV[1]")  

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request["Content-Type"] = "text/plain"


request.body = file.read

response = https.request(request)
puts response.read_body
