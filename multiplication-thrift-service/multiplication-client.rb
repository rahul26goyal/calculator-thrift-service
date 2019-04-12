#ref: https://saravani.wordpress.com/2011/05/03/thrift-ruby-tutorial/
#include the thrift generated code.
$:.push('gen-rb')

require 'thrift'
require 'multiplication_service'

begin
  port = 9090
  transport = Thrift::BufferedTransport.new(Thrift::Socket.new('localhost', 9090))
  protocol = Thrift::BinaryProtocol.new(transport)
  client = MultiplicationService::Client.new(protocol)
  
  transport.open()
  
  res = client.multiply(20,2)
  puts "result:::#{res}"
  
  res = client.multiply(20,299)
  puts "result:::#{res}"
rescue => e
  puts "exception::#{e.message}"
end