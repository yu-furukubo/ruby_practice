input_line = gets.to_s
H = input_line.split(" ")[0].to_i
W = input_line.split(" ")[1].to_i
line = ""
result = 0

H.times do
    a = gets.to_s
    line += a.chomp
end

line_base = line

while line.index("#.#") != nil do
    num = line.index("#.#").to_i
    n = num.div(W)
    amari = num.modulo(W)

    if amari < W-2 then
        if n > 0 && n < H then
            if line_base.slice(num-W,3) == "###" && line_base.slice(num+W,3) == "###" then
                result += 1
            end
        end
    end
    line = line.to_s.sub("#.#","###")
end

puts result