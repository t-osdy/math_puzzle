# 10進数,2進数,8進数のいずれでも回文数になるn(n>=10)
# 英語で書く

num = 11

while true
  if num.to_s == num.to_s.reverse &&
     num.to_s(2) == num.to_s(2).reverse &&
     num.to_s(8) == num.to_s(8).reverse

     puts num
     break
  end
  num += 2
end
