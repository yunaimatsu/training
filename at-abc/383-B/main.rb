require 'set'

def calculate_max_humid_rooms(h, w, d, room)
  # 床の座標リストを作成
  floor_list = []

  # 床のセル座標をリストに格納
  h.times do |i|
    w.times do |j|
      if room[i][j] == '.'
        floor_list.push([i, j])
      end
    end
  end

  # 最大加湿されるマスの数を格納する変数
  max_humidified = 0

  # 床のセルから異なる2つのセルを選んで加湿器を設置
  floor_list.combination(2) do |humidifier1, humidifier2|
    # 加湿器1と加湿器2の位置を取得
    x1, y1 = humidifier1
    x2, y2 = humidifier2

    # 加湿されるマスを記録するための集合を定義する
    humidified_cells = Set.new

    # 加湿器1によって加湿されるマス
    h.times do |i|
      w.times do |j|
        if room[i][j] == '.' && (i - x1).abs + (j - y1).abs <= d
          humidified_cells.add([i, j])
        end
      end
    end

    # 加湿器2によって加湿されるマス
    h.times do |i|
      w.times do |j|
        if room[i][j] == '.' && (i - x2).abs + (j - y2).abs <= d
          humidified_cells.add([i, j])
        end
      end
    end

    # 現在の組み合わせで加湿されるマスの数を記録
    max_humidified = [max_humidified, humidified_cells.size].max
  end

  # 最大加湿されるマスの数を返す
  max_humidified
end

# 入力
h, w, d = gets.split.map(&:to_i)
room = h.times.map { gets.chomp }

# 出力
puts calculate_max_humid_rooms(h, w, d, room)