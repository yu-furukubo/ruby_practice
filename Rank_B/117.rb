result = 0
line = readlines.map(&:to_i)
num = 1
line = line.drop(1).push 0

while line != [0] do

    while line.slice(0) == num do
        line = line.drop(1)
        num += 1
    end

    # 配列のはじめが”0”なら一周追加
    if line.slice(0) == 0 && line != [0]
        result += 1
    end

# 配列の順番を入れ替える処理
    i=1
    array=[]
    line.size.times{
        array << line[i-line.size]
        i+=1
    }
    line = array
# ここまで
end

puts result