def stock_picker (stock_price_array)
  best_day_to_buy = nil
  best_day_to_sell = nil
  positive_spreads_and_corresponding_days = []


  # calculate spreads and save into array if positive (positive_spreads_and_corresponding_days = [[spread, day_to_buy, day_to_sell]])
  stock_price_array.each_with_index do |price_to_buy, day_to_buy| 
    stock_price_array.each_with_index do |price_to_sell, day_to_sell|
      if day_to_buy <= day_to_sell && price_to_sell > price_to_buy
        positive_spreads_and_corresponding_days << [price_to_sell - price_to_buy, day_to_buy, day_to_sell]
        positive_spreads_and_corresponding_days
      end
    end
  end
end

p stock_picker([17,3,6,9,15,8,6,1,10])