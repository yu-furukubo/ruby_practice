inputs_line = gets.to_s
N = inputs_line.split(" ")[0].to_i
M = inputs_line.split(" ")[1].to_i

result_check = 0
array = []

M.times do |i|
  input = gets.to_s
  array << input.chomp
end

N.times do
    result = 100
    M.times do |i|
        sing = gets.to_i
        check = array[i].to_i - sing
        if check.abs > 30 then
            result -= 5
        elsif check.abs <= 30 && check.abs > 20 then
            result -= 3
        elsif check.abs <= 20 && check.abs > 10 then
            result -= 2
        elsif check.abs <= 10 && check.abs > 5 then
            result -= 1
        end
    end

    if result < 0 then
        result = 0
    end

    if result > result_check then
        result_check = result
    end
end

p result_check