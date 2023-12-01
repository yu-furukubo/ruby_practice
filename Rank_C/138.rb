N = gets.to_i
array = []
N.times do
    s = gets.to_i
    array << s
end

result = []

N.times do |i|
    check = array[i]
    rank = array.count{|num| num > check}
    result << rank + 1
end

puts result