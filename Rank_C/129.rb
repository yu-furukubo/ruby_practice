inputs = gets.to_s.chomp.split(" ")
N = inputs[0].to_i
M = inputs[1].to_i
result = "Yes"

array_sample = []
array = []

M.times do
    array_sample << gets.to_i
end

M.times do
    array << gets.to_i
end

N.times do |i|
    if array_sample.count(i+1) == array.count(i+1) then
        next
    else
        result = "No"
        break
    end
end

puts result