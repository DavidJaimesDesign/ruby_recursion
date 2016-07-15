def merge_sort_prep(arr)
	prep_arr = arr.each_slice(2).to_a
	prep_arr.each{|a| a.sort!{|x,y| x <=> y}}
	prep_arr
end

def depth(arr)
	return 0 unless a.is_a?(Array)
	return 1 + depth(arr[0])
end

def merge_sort_core(arr)
	return arr if depth(arr) == 1
	arr_d = []


	merge_sort_core(arr_d)
end

def merge_sort(arr)
	merge_sort_core(merge_sort_prep(arr))
end

arr = [2,5,6,3,76,34,753,3,4,2,100,56]
merge_sort_prep(arr)