def stock_picker(stock_prices)
  values_to_compare = []
  best_diff_at = []

  stock_prices.each_with_index do |price, index|
    for i in index..stock_prices.length - 1 do
      unless i + 1 == stock_prices.length
        values_to_compare.push({diff_value: price - stock_prices[i + 1], value_indexes: [index, i + 1]})
      end
    end
  end

  values_to_compare.each_with_index.reduce(0) do |acc, (value, index)|
    if value[:diff_value] < acc
      acc = value[:diff_value]
      best_diff_at = index
    end
    acc
  end

  values_to_compare[best_diff_at][:value_indexes]
end

stock_picker([17,3,6,9,15,8,6,1,10])