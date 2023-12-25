# 座標系での規則的な移動
# 指定座標から時計回りに一定回数移動した後の座標表示

inputs = gets.to_s.chomp.split(" ")
x = inputs[0].to_i
y = inputs[1].to_i
N = inputs[2].to_i

# 何周目にいるかの判定
for i in 1..N do
    f = (2*i+1) ** 2
    if N <= (f - 1) then
        c = i
        break
    end
end

# 該当周の右上に移動
x += c
y -= c

# 何歩戻るか
step = f-1-N

# 一辺当たりの長さ
v = (2*(c-1)+1)**2 - 1 #一つ内側までに移動した歩数
check = (f-v-1)/4


# 座標だけ求める記述
if step <= (1*check) then
    x -= step
elsif step <= (2*check) then
    x -= check
    y += step - check
elsif step <= (3*check) then
    y += check
    x -= check - step.modulo(check)
else
    y += N - v
end

# 一歩ずつ戻りながら目標座標に向かう記述
# step.times do |i|
#     if (i + 1) <= (1*check) then
#         x -= 1
#     elsif (i + 1) <= (2*check) then
#         y += 1
#     elsif (i + 1) <= (3*check) then
#         x += 1
#     else
#         y -= 1
#     end
# end

puts "#{x} #{y}"