N = gets.to_i #使用しないが、標準入力があるため記載残し
price_array = gets.to_s.chomp.split(" ")
inputs = gets.to_s.chomp.split(" ")
money = inputs[0].to_i
num = inputs[1].to_i

num.times do
    buy_detail = gets.to_s.chomp.split(" ")
    price = price_array[buy_detail[0].to_i-1].to_i * buy_detail[1].to_i
    if money < price then
        next
    else
        money -= price
    end
end

puts money