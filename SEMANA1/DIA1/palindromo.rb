

def is_palindrome? palindrome_candidate

	palindrome_candidate.downcase! # con el simbolo de ! modificas la variable. 

	words_array = palindrome_candidate.split
	words_array == words_array.reverse

end 


str5 = "Fall leaves as soon as leaves fall"

puts is_palindrome?(str5) #simetric by words
