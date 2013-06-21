class Stock
  attr_accessor :ticker, :market_rate, :shares

  def initialize(ticker, shares, market_rate)
    @ticker = ticker
    @shares = shares
    @market_rate = market_rate
  end

  def list_value(shares, market_rate)
    shares * market_rate
  end

  def to_s
    "#{@ticker}, #{@shares}, #{@market_rate}"
  end
end