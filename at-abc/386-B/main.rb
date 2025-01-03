def minimum_button_presses(s)
    press_count = 0
    i = 0
    n = s.length

    while i < n
        if i < n - 1 && s[i] == '0' && s[i + 1] == '0' # 最後から2番目より前で，00となっている
        press_count += 1 
        i += 2 # press_countを1増やしただけで次の文字列を検証する
    else
        press_count += 1
        i += 1 # 通常通り次の文字列を検証する
    end
end

press_count
end

# Input


# Output the result
puts minimum_button_presses(s)