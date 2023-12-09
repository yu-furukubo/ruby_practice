input = gets.to_s.chomp.split(" ")
N = input[0].to_i
num = input[1].to_i
count = input[2].to_i
array = []

N.times do |i|
    array << i + 1
end

if N % num == 0 then
    M = N / num
else
    M = N / num + 1
end

count.times do
    result = []
    M.times do
        ins = []
        num.times do |j|
            unless array[j] == nil then
                ins << array[j]
            end
        end
        result = result.unshift ins
        array = array.drop(num)
        result = result.flatten
    end
    array = result
end

puts array