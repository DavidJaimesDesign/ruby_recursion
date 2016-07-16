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
	return arr.flatten! if depth(arr) == 2 && arr.length == 1
	arr_d = []
	split = arr[0].length*2
	puts split

	while arr.any? do 
		if arr.length == 1
			arr_d << arr[0]
			arr.delete_at(0)

		elsif arr[0].empty? && arr[1].empty?
			arr.delete_at(0)
			arr.delete_at(0)

		elsif arr[0].empty? && arr[1].any?
			arr_d << arr[1][0..1]
			arr.delete_at(0)
			arr.delete_at(0)

		elsif arr[0].any? && arr[1].empty?
			arr_d << arr[0][0]
			arr.delete_at(0)
			arr.delete_at(0)

		elsif arr[0][0] > arr[1][0] 
			arr_d << arr[1][0]
			x = arr[1][0]
			arr[1].delete(x)

		elsif arr[0][0] < arr[1][0] 
			arr_d << arr[0][0]
			x =  arr[0][0]
			arr[0].delete(x)

		elsif  arr[0][0] == arr[1][0]
			arr_d << arr[0][0]
			arr_d << arr[1][0]
			x = arr[0][0]
			y = arr[1][0]
			arr[0].delete(x)
			arr[1].delete(y)
		end 
		puts arr.inspect
		puts arr_d.inspect
	end
	arr_d.flatten!
	arr_c = arr_d.each_slice(split).to_a
	merge_sort_core(arr_c)
end

def merge_sort(arr)
	merge_sort_core(merge_sort_prep(arr))
end

arr = [2,5,6,3,76,34,753,3,4,2,100,56]
print merge_sort(arr) 