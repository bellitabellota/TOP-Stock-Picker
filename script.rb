def stock_picker (stock_price_array)
  positive_spreads_and_corresponding_days = []

  # calculate spreads and save into array if positive (positive_spreads_and_corresponding_days = [[profit, day_to_buy, day_to_sell]])
  stock_price_array.each_with_index do |price_to_buy, day_to_buy| 
    stock_price_array.each_with_index do |price_to_sell, day_to_sell|
      if day_to_buy <= day_to_sell && price_to_sell > price_to_buy
        positive_spreads_and_corresponding_days << [price_to_sell - price_to_buy, day_to_buy, day_to_sell]
        positive_spreads_and_corresponding_days
      end
    end
  end

  #find highest spread and save corresponding days in array
  highest_spread = 0
  best_days = [nil, nil]

  positive_spreads_and_corresponding_days.each do |spread_buy_sell|
    if spread_buy_sell[0] > highest_spread
      highest_spread = spread_buy_sell[0]
      best_days[0] = spread_buy_sell[1]
      best_days[1] = spread_buy_sell[2]
    end
  end
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])