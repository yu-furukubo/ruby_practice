N = gets.to_i
age = []
result = []
N.times do
    s = gets.to_i
    age << s
    result << 0
end

M = gets.to_i

M.times do
    array = gets.to_s.chomp.split(" ")
    start = array[0].to_i-1
    finish = array[1].to_i-1
    num = array[2].to_i

    for i in start..finish do
        if age[i] < result[i] + num then
            result[i] = age[i]
        else
            result[i] += num
        end
    end
end

puts result