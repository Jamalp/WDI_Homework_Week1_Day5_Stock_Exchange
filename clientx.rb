class Clientx
  attr_accessor :name, :balance, :portfolio

  def initialize(name,balance)
    @name = name
    @balance = balance
    @portfolio = {}
  end

  def buy_stock(ticker, shares)
    market_rate = YahooFinance::get_quotes(YahooFinance::StandardQuote, ticker)[ticker].lastTrade
    stock = Stock.new(ticker, shares, market_rate)
    stock_value = shares * market_rate
    @balance -= stock_value.to_i
    puts "Your new balance is $#{@balance}. ."
  end

  def sell_stock(ticker, shares)
    market_rate = YahooFinance::get_quotes(YahooFinance::StandardQuote, ticker)[ticker].lastTrade
    stock = Stock.new(ticker, shares, market_rate)
    stock_value = shares * market_rate
    @balance += stock_value.to_i
    puts "Your new balance is $#{@balance}."

  end

  def list_clients
  end

  def list_portfolio
  end

end

