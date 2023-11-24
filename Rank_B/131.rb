result = 0
rosen_before = 0
num_before = 0
inputs_line = gets.to_s
N = inputs_line.split(" ")[0].to_i #路線
M = inputs_line.split(" ")[1].to_i #駅数
array = []

for i in 1..N do
    s = gets.to_s.chomp.split(" ")
    array << s
end

move = gets.to_i

move.times do |i|
    station = gets.to_s.chomp
    rosen = station.split(" ")[0].to_i
    num = station.split(" ")[1].to_i

    if i == 0 then
        result += array[rosen-1][num-1].to_i
    else
        if num == num_before then
            result += 0
        elsif rosen == rosen_before then
            result += (array[rosen-1][num-1].to_i - array[rosen_before-1][num_before-1].to_i).abs
        else
            result += (array[rosen-1][num-1].to_i - array[rosen-1][num_before-1].to_i).abs
        end
    end

    rosen_before = rosen
    num_before = num
end

puts result