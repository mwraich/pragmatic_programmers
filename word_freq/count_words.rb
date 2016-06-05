require_relative 'words_from_string.rb'
require_relative 'count_frequency.rb'
raw_text = %{Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.}

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)

# for i in 0...5
#   word = top_five[i][0]
#   count = top_five[i][1]
#   puts "#{word}: #{count}"
# end

top_five.each do |word, count|
  puts "#{word}: #{count}"
end
