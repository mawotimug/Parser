# frozen_string_literal: true

# constants
READ = 'r'
READ.freeze
WRITE = 'w'
WRITE.freeze

# variables
src_dir = 'sources' # subdir
up_dir = '..' # parent dir
current_dir = '.'
src_file = '1.txt'
out_file = 'out.xml'

Dir.chdir up_dir
File.open(out_file, WRITE)
Dir.chdir up_dir

# taking files from source subdir one by one
# Dir.chdir src_dir
puts Dir.children(current_dir)

# files[] = Dir.methods
# puts files[]

File.open(src_file, READ) do |file|
  for line in file.readlines
    puts line
  end
end
Dir.chdir up_dir
File.close(out_file)

# for every file do parsing and create xml
# finished xml-files to put in the upload folder
