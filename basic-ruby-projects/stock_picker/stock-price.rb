=begin

declare a var named max_profit and initialize it with 0
declare a var named the_day_to_buy
declare a var named the_day_to_sell

set the current day as the day for buying
calculate the profit if you sell the next day
  if that profit is greater than max_profit
    Update the max_profit
    Update the_day_to_buy
    Update the_day_to_sell
  end
move on to the next day

=end

def stock_picker(stock_price)
  max_profit = 0
  the_day_to_buy = nil
  the_day_to_sell = nil

  stock_price.each_with_index do |current_stock_price, day|
    
    last_day = stock_price.length - 1
    following_day = day + 1

    (following_day).upto(last_day) do |current_day|
      if (stock_price[current_day] - current_stock_price) > max_profit
        max_profit = stock_price[current_day] - current_stock_price
        the_day_to_buy = day
        the_day_to_sell = current_day
      end
    end
  end

  [the_day_to_buy, the_day_to_sell]
end

p stock_picker([17,3,6,9,15,8,6,1,10])

