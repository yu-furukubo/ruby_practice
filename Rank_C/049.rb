N = gets.to_i
s = 1
result = 0

N.times do
    s_after = gets.to_i
    result += (s - s_after).abs
    s = s_after
end
puts result