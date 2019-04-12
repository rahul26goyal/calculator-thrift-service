#include thrift generated code
$:.push('gen-rb')

require 'thrift'
require 'multiplication_service'

#provide Implementation for Multiplicaton service

class MultiplicationHandler
  
  def initialize()
    puts "hanlder initialized..."
  end
  
  def multiply(a,b)
    puts "multiplying a, b::#{a}::#{b}"
    a * b
  end
  
  def add(a,b)
    puts "multiplying a, b::#{a}::#{b}"
    a + b
  end
  
  def run_task()
    puts "kicking off the task..."
  end
end


handler = MultiplicationHandler.new()
processor = MultiplicationService::Processor.new(handler)
transport = Thrift::ServerSocket.new(9090)
transportFactory = Thrift::BufferedTransportFactory.new()
server = Thrift::SimpleServer.new(processor, transport, transportFactory)
puts "Starting the MultiplicationService server on port 9090..."
server.serve()
puts "done."
