N = gets.to_i
point = 0
N.times do
    array = gets.to_s.chomp.split(" ")
    date = array[0]
    price = array[1].to_i

    if date.include?("3") then
        point += price * 3 / 100
    elsif date.include?("5") then
        point += price * 5 / 100
    else
        point += price / 100
    end
end

puts point