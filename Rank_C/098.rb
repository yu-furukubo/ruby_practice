N = gets.to_i

array = []

N.times do
    s  = gets.to_i
    array << s
end

M = gets.to_i

for i in 1..M do
    pass = gets.to_s.chomp.split(" ")
    s = pass[0].to_i-1
    g = pass[1].to_i-1
    num = pass[2].to_i
    if array[s] < num then
        array[g] += array[s]
        array[s] = 0
    else
        array[s] += -num
        array[g] += num
    end
end

puts array