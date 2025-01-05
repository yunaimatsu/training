require 'set'

# 入力を受け取る
h, w, x, y = gets.split.map(&:to_i)
x -= 1 # 配列のインデックスに合わせるため -1
y -= 1 # 配列のインデックスに合わせるため -1

# マップを受け取る
houses_table = Array.new(h) { gets.chomp }
# 移動指示を受け取る
t = gets.chomp

# サンタクロースが最初にいる位置
santa_x, santa_y = x, y

# 通過した家を記録するセット
visited_houses = Set.new

# 移動をシミュレート
t.each_char do |move|
  # 現在の位置からの移動候補
  if move == 'U' && santa_x > 0 && (houses_table[santa_x - 1][santa_y] == '.' || houses_table[santa_x - 1][santa_y] == '@')
    santa_x -= 1
  elsif move == 'D' && santa_x < h - 1 && (houses_table[santa_x + 1][santa_y] == '.' || houses_table[santa_x + 1][santa_y] == '@')
    santa_x += 1
  elsif move == 'L' && santa_y > 0 && (houses_table[santa_x][santa_y - 1] == '.' || houses_table[santa_x][santa_y - 1] == '@')
    santa_y -= 1
  elsif move == 'R' && santa_y < w - 1 && (houses_table[santa_x][santa_y + 1] == '.' || houses_table[santa_x][santa_y + 1] == '@')
    santa_y += 1
  end

  # 通過した家を記録
  visited_houses.add([santa_x, santa_y]) if houses_table[santa_x][santa_y] == '@'
end

# 出力
puts "#{santa_x + 1} #{santa_y + 1} #{visited_houses.size}"
