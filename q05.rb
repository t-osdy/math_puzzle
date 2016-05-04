# 1000円の両替の組み合わせ
# The combination of currency exchange

coins = [10, 50, 100, 500]
TARGET = 1000
cnt = 0

(2..15).each do |i|
  coins.repeated_combination(i).each{|coin_set|
    cnt += 1 if coin_set.inject(:+) == TARGET
  }
end

puts cnt
