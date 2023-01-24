def stock_picker(prices)
  arr_1 = prices.combination(2).to_a
  final_days = []
  differences = arr_1.map { |x, y| (y - x) }
  i = differences.find_index(differences.max)
  picker = {}
  prices.each_with_index do |p, i|
    picker[p] = i
  end

  arr_1[i].each do |a|
    final_days.push(picker[a])
  end
  return final_days
end