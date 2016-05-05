N = 10000
cnt = 0

2.step(N, 2) do |i|
  num = (i * 3) + 1

  while num != 1
    if i == num
      cnt += 1
      break
    elsif num % 2 == 0
      num = num / 2
    else
      num = (num * 3) + 1
    end
  end
end

puts cnt
