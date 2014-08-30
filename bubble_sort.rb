def bubble_sort(array)
    n_outer = array.size
    n = array.size
    first = 0
    second = 0
    count = 0
    for i in 1..n_outer
        for j in 0...(n - 1)
            if array[j] > array[j + 1]
                first = array[j]
                second = array[j + 1]
                array[j] = second
                array[j + 1] = first
                count += 1
            end
        end
        if count == 0
            break;
        else
            count = 0
        end
        n_outer -= 1
    end
    array
end