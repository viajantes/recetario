#!/usr/bin/env ruby

#  e.g. rake pdf                 # Create a PDF
#       rake xhtml               # Create an XHTML file
#       rake chm                 # Create a CHM help file
#       rake pdf VALIDATE=false  # skips validation


#=================== Set path to DOCBOOK files =======

temp_root = ENV['SHORT_ATTENTION_SPAN_DOCBOOK_PATH'] || "/home/jccruz/docbook"
# fix for windows paths with double-quotes and bad slashes.
DOCBOOK_ROOT = temp_root.gsub("\\", "/").gsub('"', "")
require "#{DOCBOOK_ROOT}/make"


desc "Called before processing"
task :preprocess do
  # Given you called "rake book.pdf" the following environment variables are available to you:
  #
  # ENV["SOURCE_FILENAME"] : book.xml
  # ENV["TEMP_FILE"] = book.tmp  - The file without the .xml extension 
  # ENV["TEMP_FILENAME"] = book.tmp.xml  - This is the file we process as the source file
  # ENV["OUTPUT_FILENAME"] = book.pdf    - what you requested on the commandline
  # ENV["FORMAT"] = pdf                  - the format we used
  
  # Create your own preprocessor and invoke it here. Operate on ENV["TEMP_FILENAME"] if you
  # plan to manipulate the Docbook XML that gets assembled.
  
end

desc "Called after a successful rendering. "
task :postprocess do
  # Hint: use ENV["FORMAT"] to do various things based on the
  # type of output.
  # 
  # case ENV["FORMAT"]
  # when "pdf"
  #   # open in PDF reader?
  # when "html"
  #   # open in browser
  # when "epub"
  #   # open in epub reader
  # end
end
