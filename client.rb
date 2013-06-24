class Client
  attr_accessor :name, :balance, :portfolio
  def initialize(name, balance)
    @name = name
    @balance = balance
    @portfolio = {}
  end

  def show_portfolio
    @portfolio
  end

  def create_portfolio(name)
    @portfolio[name.to_sym] = []
  end

  def list_client
    puts client.each
  end

  def balance
    @balance = balance
  end

  def buy_stocks(ticker, shares, port)
    market_price = YahooFinance::get_quotes(YahooFinance::StandardQuote, ticker)[ticker].lastTrade
    @portfolio[port.to_sym] << Stocks.new(ticker, market_price, shares)
    stock_value = market_price * shares
    @balance += stock_value

    if balance.to_i < stock_value.to_i
      puts "You don't have enough funds for this purchase"
    else
      @  = Stock.new(ticker, shares)
      @balance -= stock_value.to_i
      @portfolio[port_string.to_sym] << @new_stock
      return @stock1
    end
  end
end

  def sell_stocks
   @balance += stock_value.to_i
   @portfolio[port_string.to_sym] << @new_stock
   return @stock1
  end
