require 'yahoofinance'

class Stock
  attr_reader :ticker, :number_of_shares
  def initialize(ticker, number_of_shares)
    @ticker = ticker
    @number_of_shares = number_of_shares
  end

  def buy_shares(shares_to_buy)
    @number_of_shares += shares_to_buy
  end

  def selling_shares(shares_to_sell)
    if @shares_to_sell < @number_of_shares
      @number_of_shares -= shares_to_sell
    else
      return false
  end

  def get_price(ticker)
    return YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade
  end
end

class Portfolio
  #value
  def initialize
    @stocks = {}
  end

  def add_sharess_or_create_stock(ticker, number_of_shares)

  end
end

class Client
  #cash balance
  def initialize
    @portfolios = {}
  end
end

new_stock = Stock.new('AAPL', 100)
puts "#{new_stock.ticker}, #{new_stock.number_of_shares}"