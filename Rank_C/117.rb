result = 0
input_line = gets.to_s
abc = gets.to_s
N = input_line.split(" ")[0].to_i
M = input_line.split(" ")[1].to_i

build = abc.split(" ")[0].to_i
human = abc.split(" ")[1].to_i
value = abc.split(" ")[2].to_i

N.times do
    sale = gets.to_i
    s = value * sale - build - human * M
    if s < 0 then
        result += 1
    end
end

puts result