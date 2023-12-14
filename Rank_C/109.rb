N = gets.to_i
array_str = []
array_int = []

result = []

N.times do
    result << []
end

N.times do |i|
    str = gets.to_s.chomp
    # 数字が含まれる場合、抽出
    int = str.gsub(/[^\d]/, "").to_i
    array_str << str
    array_int << int
end

array_int = array_int.sort.reverse

N.times do |i|
    num = array_int[i].to_s
    # 大きい順に並べた数字で検索
    s = array_str.select { |item| item.include?(num) }.join
    # 検索結果を後ろから順に挿入
    result[(N-i-1)] = s
    x = array_str.index(s)
    # 元の配列から抽出済みのものを検索対象外にする
    array_str[x] = "sumi"
end

puts result