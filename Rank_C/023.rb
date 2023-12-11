hit = gets.to_s.chomp.split(" ")
N = gets.to_i

num = hit.length.to_i

N.times do
    result = 0
    check = gets.to_s.chomp.split(" ")
    num.times do |i|
        if check.index(hit[i]) != nil then
            result += 1
        end
    end
    puts result
end