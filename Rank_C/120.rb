N = gets.to_i
a = gets.to_s.chomp
b = gets.to_s.chomp
result = "No"

N.times do |i|
    if a == b then
        result = "Yes"
    else
        move = b.slice(0).to_s
        b_ = b[1..-1].to_s
        b = b_ + move
    end
end

puts result