num = gets.to_s.chomp.split("")
N = num.length.to_i
result = 0

for i in 0..N-1 do
    case num[i]
    when "0" then
        result += 24
    when "1" then
        result += 6
    when "2" then
        result += 8
    when "3" then
        result += 10
    when "4" then
        result += 12
    when "5" then
        result += 14
    when "6" then
        result += 16
    when "7" then
        result += 18
    when "8" then
        result += 20
    when "9" then
        result += 22
    end
end

puts result