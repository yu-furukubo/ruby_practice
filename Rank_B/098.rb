inputs = gets.to_s.chomp.split(" ")
N = inputs[0].to_i #件数
M = inputs[1].to_i #時間
T = inputs[2].to_i #検査
K = inputs[3].to_i #判定値

array = []

N.times do
    array << []
end

M.times do
    s = gets.to_s.chomp.split(" ")
    N.times do |i|
        array[i] << s[i].to_i
    end
end

count = M - T + 1

N.times do |i|
    result = []
    count.times do |j|
        check = 0
        T.times do |h|
            check += array[i][j + h]
            if check >= K then
                result << j + h + 1
            end
        end
    end
    if result == [] then
        puts "no 0"
    else
        puts "yes #{result[0]}"
    end
end