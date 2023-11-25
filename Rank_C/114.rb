N = gets.to_i
word = gets.to_s.chomp
result = "Yes"
(N-1).times do
    next_word = gets.to_s.chomp
    if result == "Yes" then
        if word.slice(-1).to_s == next_word.slice(0).to_s then
            result = "Yes"
        else
            result = word.slice(-1) + " " + next_word.slice(0)
        end
    end
    word = next_word
end

puts result