
require 'net/http'
require 'json'
# require 'openssl'
require 'pp'


url = URI.parse('https://192.168.0.11:8443/rpc/json/')

request_data = {
  jsonrpc: '2.0',
  method: 'SearchCertificate', # тест
  common_name: 'acme.com', # тест
  params: { key1: 'value1', key2: 'value2' },
  id: 1,
}.to_json

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = (url.scheme == 'https')

# Проигнорировать проверку сертификата
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url.path)
request.body = request_data
request['Content-Type'] = 'application/json'
# request['Accept'] = 'text/plain' # Установите заголовок Accept на 'text/plain'
# request['Authorization'] = 'Basic ' + Base64.strict_encode64('username:password')

#Получение всех параметров объекта класса Net::HTTP::Post
request.instance_variables.each do |var_name|
  var_value = request.instance_variable_get(var_name)
  puts "#{var_name}: #{var_value}"
end


# Отправьте запрос и получите ответ
response = http.request(request)
pp response.code
pp JSON.parse(response.body)
puts "WvCCL/aplJy/dFc4/5eNSyEj", "Certificate Identifier = j9XgvgAVcosfHJWYRVUYoUo3s6A"






