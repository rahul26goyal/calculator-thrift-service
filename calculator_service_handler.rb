class CalculatorServiceHandler
  
  def initialize()
    puts "CalculatorServiceHandler initialize"
  end
  
  def add(a, b)
    #write the  login to add 2 numbers.
    puts "request received to add two numbers.."
    result = a + b
    return result
  end
  
  def subtract(a, b)
    #write the  login to subttract 2 numbers.
    puts "request received to subtract two numbers.."
    result = a - b
    return result
  end
end