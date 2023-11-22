input_line = gets
result = 0
N = input_line.count("+").to_i + 1
line = input_line.to_s.chomp.split("+")
N.times do |i|
    s = line[i-1]
    ten = s.count("<")
    one = s.count("/")
    num = ten * 10 + one
    result += num
end
puts result