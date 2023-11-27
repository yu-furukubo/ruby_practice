array = []
31.times do
    array << 0
end
k = 0

M = gets.to_i

M.times do
    s = gets.to_i-1
    array[s] += 1
end

N = gets .to_i

N.times do
    s = gets.to_i-1
    array[s] += 2
end

for i in 1..31 do
    case array[i-1]
    when 0 then
        puts "x"
    when 1 then
        puts "A"
    when 2 then
        puts "B"
    when 3 then
        if k == 0 then
            puts "A"
            k = 1
        else
            puts "B"
            k = 0
        end
    end
end