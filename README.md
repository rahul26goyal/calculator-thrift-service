# calculator-thrift-service
A simple Calculator Thrift Service Implementation

#To Setup Thrift 
* Follow: https://thrift-tutorial.readthedocs.io/en/latest/installation.html 
* Or MaxOs Users try: `brew install thrift`

#To test the Multiplication Service
* Checkout this repository.
* `cd multiplication-thrift-service`
* To generate the Thrift Code: `thrift --gen rb multiiplicatoion.thrift`
* To start the server `ruby multiplicatiion-server.rb`
* To run the client `ruby multiplication-client.rb`
* You should see the output.
