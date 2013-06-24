require 'pry'

class Stockman
  attr_reader :stock_name
  attr_writer :password
  attr_accessor :portfolio

  def initialize
    @portfolio = {}
    @name = "Jamal"
    @password = 1234
  end


  def get_portfolio
    # Returns the instance Variable
    @portfolio
  end

  def portfolio=(stock_name)
    # lets use set the instance variable
    @portfolio[stock_name] = "I added a stock"
  end
end

class Stock
  attr_accessor :symbol, :price, :shares
  def initialize(symbol, price, shares)
    @symbol = symbol
    @price = price
    @shares = shares
  end

  def total
    @price * @shares
  end

  def Stock.get_price(ticker)
    yahoo::finance.get_price(ticker)
  end
end

p1 = Stockman.new
p1.portfolio[:tech] = []
s1 = Stock.new('APPL', 50, 100)
s2 = Stock.new('TSLA', 40, 50)
p1.portfolio[:tech] = [s1, s2]

total_value = 0

p1.portfolio[:tech].each do |stock|
  total_value += stock.total
  end

binding.pry


# p2 = Stockman.new
# => #<Stockman:0x007f8f350890f0 @name="Jamal", @password=1234, @portfolio={}>
# [4] pry(main)> p2.portfolio
# => {}
# [5] pry(main)> p2.portfolio[:food] = []
# => []
# [6] pry(main)> p2.portfolio[:food].push 'Bentos'
# => ["Bentos"]

# [10] pry(main)> p2.portfolio[:food] << { :kale => '1/2 cup', :spinach => '1cup'}
# => ["Bentos", {:kale=>"1/2 cup", :spinach=>"1cup"}]



# [3] pry(main)> p1.portfolio[:tech].each do |stock|
# [3] pry(main)*   puts stock.shares
# [3] pry(main)* end
# 100
# 50
# This is how to show the shares value.

# [4] pry(main)> total_shares = []
# => []
# [5] pry(main)> total_shares = 0
# => 0
# [6] pry(main)> p1.portfolio[:tech].each do |stock|
# [6] pry(main)*   total_shares += stock.shares
# [6] pry(main)* end
# => [#<Stock:0x007ff1de237990 @price=50, @shares=100, @symbol="APPL">,
#  #<Stock:0x007ff1de237940 @price=40, @shares=50, @symbol="TSLA">]
# [7] pry(main)> total_shares
# => 150
#This is to show the total value of the shares.
