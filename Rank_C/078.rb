input_lines = gets.to_s.chomp.split(" ")
N = input_lines[0].to_i
buy = input_lines[1].to_i
sell = input_lines[2].to_i

result = 0
hold = 0

(N-1).times do
    price = gets.to_i
    if price <= buy then
        result -= price
        hold += 1
    elsif price >= sell then
        result += price * hold
        hold = 0
    end
end

if hold > 0 then
    price = gets.to_i
    result += price * hold
end

puts result