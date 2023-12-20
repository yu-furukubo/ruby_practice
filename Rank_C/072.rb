status = gets.to_s.chomp.split(" ")
atk = status[0].to_i
deff = status[1].to_i
agi = status[2].to_i

N = gets.to_i
result = []

N.times do
    monster = gets.to_s.chomp.split(" ")
    name = monster[0]
    if atk < monster[1].to_i || atk > monster[2].to_i then
        next
    end

    if deff < monster[3].to_i || deff > monster[4].to_i then
        next
    end

    if agi < monster[5].to_i || agi > monster[6].to_i then
        next
    end

    result << name
end

if result == [] then
    puts "no evolution"
else
    puts result
end