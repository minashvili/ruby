
require 'net/http'
require 'uri'
require 'base64'
require 'pp'
require 'json'


def send_post_request(url, params)
  uri = URI.parse(url)

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  # Создаем объект запроса POST
  request = Net::HTTP::Post.new(uri.path)
  request.set_form_data(params)

  # Отправляем POST-запрос и получаем ответ
  response = http.request(request)

  return response.body
end


url = 'https://192.168.0.11:8443/rpc/enroll/'
params = {
  'method' => 'RequestCertificate',
  'comment' => 'test for acme.com',
  'pkcs10' => File.read('test3.corp.magneto.com.csr'),
  # 'Accept' => 'text/plain', # Установите заголовок Accept на 'text/plain'
  # 'Authorization' => 'Authentication method ' + Base64.strict_encode64('bob:openxpki')
}

response = send_post_request(url, params)
# pp response
# pp JSON.parse(response)
puts response

#Достаем сертификат из json парсера, потому что response - это текст а в json.parse это хэш
open "cert_test.csr", 'w' do |io|
  io.write JSON.parse(response)["result"]["data"]["certificate"]
end

# request['Accept'] = 'text/plain' # Установите заголовок Accept на 'text/plain'
# request['Authorization'] = 'Basic ' + Base64.strict_encode64('username:password')

