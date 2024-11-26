def bubble_sort(array_to_be_sorted)

  iteration_counter = 0


  max_iterations = array_to_be_sorted.length - 1
  arr_length = array_to_be_sorted.length

  max_iterations.times do |count|
    iteration_counter += 1
    is_arr_sorted = true
    last_unsorted_val_ind = arr_length - count - 1

    for index in 0..last_unsorted_val_ind
      unless index == arr_length - 1
        current_element = array_to_be_sorted[index]
        next_element = array_to_be_sorted[index + 1]

        if current_element > next_element
          is_arr_sorted = false
          temp = current_element
          array_to_be_sorted[index] = next_element
          array_to_be_sorted[index + 1] = temp
        end
      end
    end
    if is_arr_sorted
      puts "It did iterates ## #{iteration_counter} ## times"
      break
    end
  end

  array_to_be_sorted # has been successfully sorted
end

p  bubble_sort([4,3,78,2,0,2])
