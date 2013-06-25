require 'yahoofinance'

def get_price(ticker)
  return YahooFinance::get_quotes(YahooFinance::StandardQuote, ticker)[ticker].lastTrade
end

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

  def get_transaction_value(ticker, shares)
    return get_stock_price(@ticker) * shares
  end

  def get_current_value
    return get_transaction_value(@tcker, @shares)
  end

  def calculate_portfolio_value
    portfolio_value = 0
    @stocks.each do |stock|
      portfolio_value += stock.get_current_value
    end
    return portfolio_value
  end

  def get_price
    get_stock_price(@ticker)
  end
end

class Portfolio
  #value
  def initialize
    @stocks = {}
  end

  def add_stock(ticker, number_of_shares)
    if @stocks[ticker]
      #already have stock
    else
      #add stock

    end
  end
end

class Client
  #cash balance
  def initialize(initial_cash_balance)
    @portfolios = {}
    @cash_balance = initial_cash_balance
  end

  def add_portfolio(portfolio_name)
    # see if portfolio exists?
    # add it if not
  end

  def add_stock_to_portfolio(portfolio_name, ticker, shares)
    # check to makes ure portfolio exists
    portfolio = @porfolios[portfolio_name]
    if portfolio
      if self.enough_money?(ticker, shares
      portfolio.add_stock)(ticker, number_of_shares)
    else
      puts "not enough money"
    end
  end

  def enough_money?(ticker, shares)
    transaction_cost = get_transaction_value(ticker, shares)
    if transaction_cost > @cash_balance
      return false
    else
      return true
  end
end

new_stock = Stock.new('AAPL', 100)
puts "#{new_stock.ticker}, #{new_stock.number_of_shares}"

