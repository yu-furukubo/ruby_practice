num = gets.to_s.chomp
N = gets.to_i
result = []

N.times do
    s = gets.to_s

    if s.include?(num) then
        next
    else
        result << s
    end
end

if result == [] then
    puts "none"
else
    puts result
end