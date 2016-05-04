# カードを裏返す
# Reverse card

N = 100
cards = [false] * N

(2..N).each do |i|
  j = i - 1
  while ( j < cards.size ) do
    cards[j] = !cards[j]
    j += i
  end
end

N.times do |i|
  puts i + 1 if !cards[i]
end
