# 数列の四則演算
# Four arithmetic operations of the sequence

op = ["+","-","*",""]

for i in 1000..10000
  c = i.to_s(10)
  for j in 0..3
    for k in 0..3
      for l in 0..3
        val = c[3] + op[j] + c[2] + op[k] + c[1] + op[l] + c[0]

        if val.length > 4
          unless val.split(//).include?("0")
            if i == eval(val)
              puts val
            end
          end
        end
      end
    end
  end


end
