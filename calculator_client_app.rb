#impoort thrift generated code
$:.push('gen-rb')

#import thrift
require 'thrift'

#import the Server Controller module
require 'calculator_service'

def test_application
  begin
    puts "start testing..."
    #host and port on which thriftt server is running.
    server_host = 'localhost'
    port = 9090
    #define the transport protocol compatible with server.
    transport = Thrift::BufferedTransport.new(Thrift::Socket.new(server_host, port))
    protocol = Thrift::BinaryProtocol.new(transport)
    
    #create a the thrift client.
    client = CalculatorService::Client.new(protocol)

    transport.open()
    
    #start making requests...
    res = client.add(20,30)
    puts "add result:::#{res}"
    
    res = client.subtract(50,20)
    puts "subtract result:::#{res}"
  rescue => e
    puts "Exception  : #{e.message}: #{e.backtrace[0..5]}"
  end
end
test_application