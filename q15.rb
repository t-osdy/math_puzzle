N = 10
STEP = 4

def move(a, b)
  return 0 if a > b
  return 1 if a == b
  cnt = 0

  (1..STEP).each{|da|
    (1..STEP).each{|db|
      cnt += move(a + da, b - db)
    }
  }
  cnt
end
  
puts move(0, N)
