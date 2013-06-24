require 'rubygems'
require 'mtgox'

puts "1 USD will buy you #{MtGox.ticker.sell} BTC"