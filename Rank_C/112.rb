N = gets.to_i
min = 0
max = 0

N.times do
    input_line = gets
    split_time = input_line.to_s.split(" ")

    a = split_time[0].to_i
    b = split_time[1].to_i
    c = split_time[2].to_i

    total_time = a + b + (24-c)

    if min == 0 then
        min = total_time
    elsif min > total_time then
        min = total_time
    end

    if max == 0 then
        max = total_time
    elsif max < total_time then
        max = total_time
    end
end

puts min
puts max