# frozen_string_literal: true

def stock_picker(prices)
  max = 0
  max_index = buy_index = 0
  prices.each_with_index do |price, index|
    buy_price = price

    result = get_max_profit(buy_price, prices, index)
    next unless result[0] > max

    max = result[0]
    max_index = result[1]
    buy_index = result[2]
  end
  [buy_index, max_index]
end

def get_max_profit(buy_price, prices, index)
  return 0 if index == prices.length - 1

  # '-Float::INFINITY' is the smallest possible float value.
  max_profit = -Float::INFINITY
  buy_index = index

  while index < prices.length - 1
    index += 1
    sell_price = prices[index]
    temp_profit = sell_price - buy_price
    next unless temp_profit > max_profit

    max_profit = temp_profit
    max_profit_index = index

  end
  [max_profit, max_profit_index, buy_index]
end

result = stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
puts result.inspect
