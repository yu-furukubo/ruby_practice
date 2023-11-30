oya = gets.to_s.chomp.split(" ")
N = gets.to_i

N.times do
    ko = gets.to_s.chomp.split(" ")
    if oya[0].to_i == ko[0].to_i then
        i = 1
        if oya[i].to_i < ko[i].to_i then
            puts "High"
        else
            puts "Low"
        end
    else
        i = 0
        if oya[i].to_i > ko[i].to_i then
            puts "High"
        else
            puts "Low"
        end
    end
end