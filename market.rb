require_relative 'client'
require_relative 'Portfolio.rb'
require_relative 'stocks.rb'


jamal = Client.new("Jamal", 500000)

jamal.create_portfolio("NYSE")


# jamal.portfolio[:NYSE] << Stocks.new("GOOG", "1000", "50")

jamal.buy_stocks("AAPL", 500, "NYSE")

puts jamal.portfolio

jamal.portfolio[:tech] << Stocks.new("AAPL", 500, 25)
