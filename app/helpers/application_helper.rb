module ApplicationHelper

	def time_ago(time)
		string = time_ago_in_words(time)
		string = string.split(" ")
		string.shift if string[0] !~ /\d/
		string = string[0] + string[1][0]
		return string
	end
end
