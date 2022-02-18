puts "Welcome to Maye'Notes.Please enter file name to create new note:"
title = gets.chomp()
puts "Write what you want to save in your note:"
notes = gets.chomp()

puts "Would you like to save this note as your file?(Please enter save if you want to save: save (or) cancel ) "
decision = gets.chomp()
if decision == "save"
  File.open("#{title}.txt", "w") do |file|
    file.write(title + "\n")
    file.write(notes)
    file.close
    puts "File has been saved under RUBY_TRAINING \\ tutorials \\ tutorial6 \\ : \"#{title}.txt\""
  end
else
  puts "\"#{title}.txt\" didn't save and data is gone."
  puts "\n"
end
current_directory = Dir.pwd
puts "Current Directory : #{current_directory}"
puts "\n"

check = Dir.empty?(".")
puts "Is it empty directory : #{check}"
puts "\n"

list_of_files = Dir.glob("*.txt")
puts "List of text file under RUBY_TRAINING \\ tutorials \\ tutorial6 : "
puts "\n"
puts "#{list_of_files.join(", ")}"
puts "\n"
begin
  puts "Enter the file name to open"
  file_name = gets.chomp()
  readfile = File.open(file_name, "r")
rescue Errno::ENOENT
  p "There is no such file name."
else
  puts readfile.read
end
