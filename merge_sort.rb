def merge_sort_prep(arr)
	prep_arr = arr.each_slice(2).to_a
	prep_arr.each{|a| a.sort!{|x,y| x <=> y}}
	prep_arr
end

def depth(arr)
	return 0 unless arr.is_a?(Array)
	return 1 + depth(arr[0])
end

def merge_sort_core(arr)#try to work with just even numbers first
	return arr if depth(arr) == 1
	arr_d = ["Worked"]

	while depth(arr) == 2
		if arr[0][0] > arr[1][0] 
			arr_d << arr[1][0]
			arr.delete(arr[0])
		elsif arr[0][0] < arr[1][0] 
			arr_d << arr[0][0]
			arr.delete(arr[0])
		else
			arr.flatten
			puts "not bigger"
			break
		end 

		break if depth(arr) == 1
	end
	arr_d
	#merge_sort_core(arr_d)
end

def merge_sort(arr)
	merge_sort_core(merge_sort_prep(arr))
end

arr = [2,5,6,3,76,34,753,3,4,2,100,56]
print merge_sort(arr) 