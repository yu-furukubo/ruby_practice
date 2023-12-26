inputs = gets.to_s.chomp.split(" ")
fee = inputs[0].to_i
inn = inputs[1].to_i
N = inputs[2].to_i
array = []

N.times do
    s = gets.to_s.chomp.split(" ")
    array << s
end

result = 0

for i in 1..N do
    start = array[i-1][0].to_i
    last = array[i-1][1].to_i
    if i != 1 then
        last_end = array[i-2][1].to_i
        between = start - last_end
    end

    if i == 1 then
        result += fee
    elsif (between * inn) > (2 * fee) then
        result += (2 * fee)
    else
        result += between * inn
    end

    if i == N then
        result += fee
    end
end

puts result