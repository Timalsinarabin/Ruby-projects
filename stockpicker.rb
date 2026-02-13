# frozen_string_literal: true

def stockpicker(stockarr)
  maximum = [0, 0]
  max = 0
  n = stockarr.length
  (0...n).each do |i|
    (i...n).each do |j|
      res = stockarr[j] - stockarr[i]
      if res > max
        max = res
        maximum = [i, j]
      end
    end
  end
  puts "By at day #{maximum[0] + 1} and sell at day #{maximum[1] + 1}"
  puts "Max profit= $#{max}"
end

stockpicker([19, 3, 6, 9, 15, 7, 6, 1]) # Update stock price perday
