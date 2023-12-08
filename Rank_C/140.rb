N = gets.to_i
array = []

N.times do
    a = gets.to_i
    array << a
end

M = gets.to_i

k = 1
result = 0
M.times do
    sale = gets.to_s.chomp.split(" ")
    right = sale[0].to_i
    left = sale[1].to_i
    array[right-1] -= 1
    array[left-1] -= 1
    if array[right-1] < 0 || array[left-1] < 0 then
        array[right-1] += 1
        array[left-1] += 1
    else
        result += 1
    end
end

puts result