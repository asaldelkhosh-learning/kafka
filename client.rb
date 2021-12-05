# frozen_string_literal: true
# Client browser

require 'socket'
print 'Domain >> '
host = gets
print 'Port   >> '
port = gets
print 'Path   >> '
path = gets

request = "GET #{path} HTTP/1.0\r\n\r\n"

socket = TCPSocket.open(host.strip, port.to_i)
socket.print(request)

Dir.mkdir('response') unless File.exist?('response')

response = socket.read

header, body = response.split("\r\n\r\n", 2)
print header

File.open('./response/index.html', 'w') do |f|
  f.write(body)
end
