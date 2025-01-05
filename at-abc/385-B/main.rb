$passed_houses_number = 0
def make_table(h, w)
    house_table = Array.new(h)
    while (section_status = gets.chomp)
        house_table.push(section_status)
    end
end

def decide_destination(x, y, t)
    i=0
    santa_x = x - 1
    santa_y = y - 1
    while i < t.length
    if t[i] = "u" && santa_y - 1 = "." || "&&" # どうやって移動先の座標を指定するの？
    if t[i] = "d" && santa_y + 1 = "." || "&&"
    if t[i] = "l" && santa_x - 1 = "." || "&&"
    if t[i] = "r" && santa_x + 1 = "." || "&&"
    i += 1
    end
    end
    end

    if t[i] = "l" &&
    t[i] == "r" &&
    return santa_x, santa_y, passed_houses_number
end

# 入力
gets.chomp

puts "#{santa_x} #{santa_y} #{passed_houses_number}"