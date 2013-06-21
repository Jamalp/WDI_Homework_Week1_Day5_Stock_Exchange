require_relative 'clientx.rb'
require_relative 'portfolio.rb'
require_relative 'stocks.rb'
require 'yahoofinance'

alina = Clientx.new("Alina", 1000000)



#alina.portfolio[:nyc] = google

#puts alina.portfolio[:nyc]


#alina.buy_stock(stock_value_1)
#alina.sell_stock(stock_value_1)

alina.buy_stock("GOOG", 1000)
alina.sell_stock("GOOG", 500)
