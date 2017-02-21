@country = ["Brazil", "cameroon", "Chirie", "greece", "Uruguay", "IY", "FE", "ba",
           "GY", "USA", "RA", "Ca", "Sn", "AA", "CE", "CA", "SD", "HS", "In", "pL",
            "BM", "KC", "MX", "Ns", "CA", "Jn", "ED", "ER", "AA", "Na", "GA", "AA"]

@is_used = Array.new(@country.size, false)

def search(prev, depth)
  is_last = true
  @country.each_with_index{|c, i|
    if c[0] == prev[-1].upcase then
      if !@is_used[i] then
        is_last = false
        @is_used[i] = true
        search(c, depth + 1)
        @is_used[i] = false
      end
    end
  }
  @max_depth = [@max_depth, depth].max if is_last
end

@max_depth = 0
@country.each_with_index{|c, i|
  @is_used[i] = true
  search(c, 1)
  @is_used[i] = false
}

puts @max_depth
