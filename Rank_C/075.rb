set_value = gets.to_s.chomp.split(" ")
money = set_value[0].to_i
N = set_value[1].to_i
result = [money,0]
N.times do
    fee = gets.to_i
    if fee <= result[1] then
        result[1] -= fee
    else
        result[0] -= fee
        result[1] += fee/10
    end
    puts result.join(" ")
end