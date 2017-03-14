# ひもの長さを1から500まで変化させる時、2つの長方形の面積の和と正方形の面積が同じになる組が何通りあるか
MAX = 500

answer = []
(1..MAX/4).each{|c|
  edge = (1..(c-1)).to_a.map{|tate| tate * (2 * c - tate)}
  edge.combination(2){|a, b|
    if a + b == c * c then
      answer.push([1, b / a.to_f, c * c / a.to_f])
    end
  }
}

answer.uniq!
puts answer.size
