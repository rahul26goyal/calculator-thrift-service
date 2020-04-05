package com.rahulg;

import org.apache.thrift.protocol.TBinaryProtocol;
import org.apache.thrift.transport.TSocket;
import org.apache.thrift.TException;

public class MultiplicationJavaClient {
    
    public static void main(String[] args) throws TException{
      TSocket socket = new TSocket("localhost", 9090);
      socket.open();
      TBinaryProtocol protocol = new TBinaryProtocol(socket);
      
      MultiplicationService.Client client = new MultiplicationService.Client(protocol);
      int result =  client.multiply(3,6);
      System.out.println("Multiplication Rsult: " + result);
    }
}