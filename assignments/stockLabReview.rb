require 'yahoofinance'

class Stock
  attr_reader :ticker, :number_of_shares
  def initialize(ticker, number_of_shares)
    @ticker = ticker
    @number_of_shares = number_of_shares
  end

  def add_shares(shares_to_add)
    @shares_to_add = @number_of_shares + shares_to_add
  end

  def get_price(ticker)
    return YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade
  end
end

new_stock = Stock.new('AAPL', 100)
puts "#{new_stock.ticker}, #{new_stock.number_of_shares}"