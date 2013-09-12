# Mitchell Wolfe
# Tuesday September
# git repository url: 

# Part1: Hello World
class HelloWorldClass
	def initialize(name)
		@name = name.capitalize
	end
	def sayHi
		puts "Hello #{@name}!"
	end
end

hello = HelloWorldClass.new("mitchell")
hello.sayHi


# Part2-a: Palindrome
def palindrome?(string)
	word = string
	word = word.downcase
	word = word.gsub(/[^a-z]/,'')
	reverse = word.reverse
	p reverse
	if word == reverse
		return true
	else
		return false
	end
end

p palindrome?("!R.a,cecar")
p palindrome?("A man, a plan, a canal -- Panama")  
p palindrome?("Madam, I'm Adam!")                 
p palindrome?("Abracadabra")


# Part2-b: word count
def count_words(string)
	word = string
	word.downcase!
	split_words = word.split
	hash = Hash.new(0)
	split_words.each { |word| hash[word] += 1 }
	return hash
end

p count_words "Doo bee doo bee doo"

p count_words("A man, a plan, a canal -- Panama")

# Parts 3 and 4 are part of assignment 2




