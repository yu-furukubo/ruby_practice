N = gets.to_i
array = readlines.map(&:to_i)
result = 0

for i in 1..N do
    if not array.include?(i) then
        result += 1
    end
end

puts result