inputs = gets.to_s.chomp.split(" ")
N = inputs[0].to_i
base = inputs[1].to_i

N.times do |i|
    info = gets.to_s.chomp.split(" ")
    score = info[0].to_i - 5*info[1].to_i
    if score < 0 then
        score = 0
    end

    if score >= base then
        puts i+1
    end
end