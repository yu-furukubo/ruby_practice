nm = gets.to_s.chomp.split(" ")
N = nm[0].to_i
M = nm[1].to_i
array = []
M.times do
    array << []
end

N.times do |i|
    give = gets.to_s.chomp.split(" ")

    M.times do |j|
        if not give[j].to_s =~ /\A[-+]?\d+\z/
            give[j] = -1
        end

        if give[j].to_i >= 0 && give[j].to_i <= 100 then
            array[j] << give[j]
        else
            array[j] << "-"
        end
    end
end

M.times do |i|
    check = array[i]
    k = 0
    average = 0
    check.length.times do |l|
        if check[l] != "-"
            k += 1
            average += check[l].to_i
        end
    end
    if average != 0 then
        puts average / k
    else
        puts 0
    end
end