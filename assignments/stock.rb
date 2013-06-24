# require 'pry'
# require 'yahoofinance'

class Client
  attr_accessor :name, :balance
  def initialize(name, balance = 0)
    @name = name
    @balance = balance
  end
  def to_s
    return "#{@name} just created an account with #{balance}"
  end
end

c1 = Client.new("Sarah", "20")

puts c1