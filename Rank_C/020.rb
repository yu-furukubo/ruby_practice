inputs = gets.to_s.chomp.split(" ")
m = inputs[0].to_i
p = inputs[1].to_i
q = inputs[2].to_i
s = m - (m * p.quo(100))
l = s - (s * q.quo(100))
puts l.to_f