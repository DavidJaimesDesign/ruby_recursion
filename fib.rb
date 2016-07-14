def fibit(n)
	arr = []
	arr << 0
	arr << 1
	i = 1
	if n == 0 || n == 1
		arr = [0]
	else
		while i < (n - 1)
			arr << (arr[i] + arr[i-1])
			i += 1
		end
	print arr
	end
end

def fitre(n,arr)
	return arr if n <= 1
	arr << (arr[-1] + arr[-2])
	fitre(n-1,arr)
end

def addthem(n, arr)
	arr << (arr[n-1] + arr[n-2])
	arr
end

arr = [0, 1]
puts fibit(8)
print fitre(8, arr)
#print addthem(2, arr)