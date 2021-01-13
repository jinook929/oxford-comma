def oxford_comma(array)
    if array.length <= 1
        return array.join
    elsif array.length == 2
        return array.join(" and ")
    else
        str_arr = array.map.with_index {|word, index|
            if index < array.length - 2
                word + ", "
            elsif index == array.length - 2
                word + ", and "
            else
                word
            end
        }
        return str_arr.join
    end
end
