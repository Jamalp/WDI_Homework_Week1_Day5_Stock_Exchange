require 'yahoofinance'

class Stocks
  attr_accessor :ticker, :market_price, :shares

  def initialize(ticker, market_price, shares)
    @ticker = ticker
    @market_price = market_price
    @shares = shares
  end

  def list_value
    market_price * shares
  end

  def to_s
    "The value of #{ticker} is #{shares} shares @ #{market_price}""
  end
end
