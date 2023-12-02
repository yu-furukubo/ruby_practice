nm = gets.to_s.chomp.split(" ")
N = nm[0].to_i
M = nm[1].to_i

hw = gets.to_s.chomp.split(" ")
H = hw[0].to_i
W = hw[1].to_i

array = []
result = []

H.times do
    H_array = []
    W.times do
        H_array << 0
    end
    array << H_array
end

M.times do
    result << 0
end

N.times do
    num = gets.to_s.chomp.split(" ")
    start_H = num[0].to_i-1
    end_H = num[1].to_i-1
    start_W = num[2].to_i-1
    end_w = num[3].to_i-1
    seed = num[4].to_i

    for i in start_H..end_H do
        for j in start_W..end_w do
            if array[i][j] != 0 then
                s = array[i][j].to_i-1
                result[s] += 1
                array[i][j] = seed
            else
                array[i][j] = seed
            end
        end
    end
end

puts result

array.length.times do |i|
    array[i] = array[i].join.to_s.gsub("0",".")
end

puts array