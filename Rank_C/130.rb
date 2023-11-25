N = gets.to_i
array = []
result = 0
for i in 1..N do
    line = gets.to_s.chomp.split(" ")
    if line[0] != line[1] then
        array << i
        result += 1
    elsif line[0] == "n" then
        array << i
        result += 1
    end
end

if array == [] then
    puts 0
else
    puts result
    puts array
end