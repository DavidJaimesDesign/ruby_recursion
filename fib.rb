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
	 arr[0..n] if n < 2
	arr << ((fitre(n-2)[-1] + fitre(n-3)[-1]) if n >= 2)
end

arr = []
puts fibit(8)
print fitre(4)