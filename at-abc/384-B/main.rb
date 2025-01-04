def calculate_final_rating(n, r, contests_info) # 全てのコンテスト分繰り返す．n: コンテストの回数(int) r: 最初のレート(int) contests_info: コンテストの情報(array)
    rating = r
    contests_info.each do |d, a|
        if d === 1 # Div. 1だった場合
            if rating >= 1600 && rating <= 2799
                rating += a
            end
        elsif d === 2 # Div. 2だった場合
            if rating >= 1200 && rating <= 2399
                rating += a
            end
        end
    end
    return rating
end

# 入力
n, r = gets.split.map { |i| i.to_i } # テキストを取得して，スペースで分割して，整数に変換して，nとrに代入
contests_info = Array.new(n) { gets.split.map(&:to_i) } # n個の要素を持つ配列を作成し，各要素にテキストを得て，スペースで分割して，整数に変換して代入．1要素(1レコード)が1回のコンテストに相当

# 結果の計算と出力
result = calculate_final_rating(n, r, contests_info)
puts result