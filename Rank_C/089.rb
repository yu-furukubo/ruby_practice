input = gets.to_s.chomp.split(" ")
h = input[0].to_i
w = input[1].to_i

hit = []
target = []
result = 0

h.times do
    s = gets.to_s.chomp
    hit << s
end

h.times do
    s = gets.to_s.chomp.split(" ")
    w.times do |i|
        target << s[i]
    end
end

hit_after = hit.join.split("")

num = h * w

num.times do |i|
    if hit_after[i] == "o" then
        result += target[i].to_i
    end
end

puts result