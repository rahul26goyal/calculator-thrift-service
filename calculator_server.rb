#impoort thrift generated code
$:.push('gen-rb')

#import thrift
require 'thrift'

#import the Server Controller module
require 'calculator_service'

#import handler
require_relative './calculator_service_handler'

#define the server code

$PORT = 9090
def start_server
  begin
    serviceHandler = CalculatorServiceHandler.new()
    processor = CalculatorService::Processor.new(serviceHandler)
    #Chose the socket port where the server will run.
    transport = Thrift::ServerSocket.new($PORT)
    #define the Trasnport protocol to be used for communication.
    transportFactory = Thrift::BufferedTransportFactory.new()
    #create server.
    server = Thrift::SimpleServer.new(processor, transport, transportFactory)
    puts "Starting the CalculatorService server on port #{$PORT}..."
    #starting the server.
    server.serve()
    puts "service started successfully..."
  rescue => e
    puts "An exception occured: #{e.message}::#{e.backtrace[0..5]}"
  end
end

#call the server.
start_server


