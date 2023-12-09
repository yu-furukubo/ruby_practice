N = gets.to_i
word = gets.to_s.chomp
array = []

N.times do
    s = gets.to_s.chomp
    array << s
end

result = array.select do |n|
    n.include?(word)
end

if result == [] then
    puts "None"
else
    puts result
end