require 'find'
require 'digest/md5'

unless ARGV[0] and File.directory?(ARGV[0])
  puts "\n\n\nYou need to specify a root directory:  changedFiles.rb <directory>\n\n\n"
  exit
end

root = ARGV[0]
oldfile_hash = Hash.new
newfile_hash = Hash.new
file_report = "#{root}/analysis_report.txt"
file_output = "#{root}/file_list.txt"
oldfile_output = "#{root}/file_list.old"
