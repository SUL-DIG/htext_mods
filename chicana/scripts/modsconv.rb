# Change File Names
print "Please enter name of file to process: "
filename = gets.chomp + '.txt'
new_file = filename + '.new'


# Replacing spreadsheet columns with xml tags.
replace_title = '<mods>
<titleInfo>
        <title>'
replace_artistln = '</title>
    </titleInfo>
    <name type="personal">
        <namePart type="family">'
replace_artistfn = '</namePart>
        <namePart type="given">'
replace_corpname = '</namePart>
    </name>
    <name type="corporate">'
replace_display_date = '</name>
    <typeOfResource>still image</typeOfResource>
    <originInfo>
        <dateIssued>'
replace_early_date = '</dateIssued>
        <dateOther type="early">'
replace_late_date = '</dateOther>
        <dateOther type="late">'
replace_medium_desc = '</dateOther>
    </originInfo>
    <physicalDescription>
        <internetMediaType>image/jpeg</internetMediaType>
        <digitalOrigin>reformatted digital</digitalOrigin>
        <form>'
replace_dimension_info = '</form>
        <extent>'
replace_subject1 = '</extent>
    </physicalDescription>
    <subject>
        <topic>'
replace_subject2 = '</topic><topic>'
replace_subject3 = '</topic><topic>'
replace_subject4 = '</topic><topic>'
replace_subject5 = '</topic><topic>'
replace_subject6 = '</topic><topic>'
replace_detail = '</topic>
    </subject>

    <part>
        <text type="legacy-view">'
replace_exhibition = '</text>
    </part>
    <note type="exhibition">'
replace_location = '</note>
    <note type="location">'
replace_endoffile = '</note>
</mods>'


#Replace empties
empty_comma = '<'
empty = ''
fix_quotes_begin = '>'
fix_quotes_end = '<'
fix_extra_space_end = '</'
fix_amp = '&amp;'

File.open(new_file,'w') do |f|
  f.puts "<modsCollection>"

File.foreach(new_file) do |li|
    	fo.puts li
	end
end
#Replace columns with MODS xml tags.
#Title
outdata = File.read(filename).gsub(/Title/, "#{replace_title}").gsub(/EndofFile/, "#{replace_endoffile}")
File.open(new_file, 'a') do |out|
  out << outdata
end  


#Names
outdata = File.read(new_file).gsub(/Last Name\t/, "#{replace_artistln}").gsub(/First-Middle\t/, "#{replace_artistfn}").gsub(/Collective\t/, "#{replace_corpname}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

#Dates
outdata = File.read(new_file).gsub(/Display Date\t/, "#{replace_display_date}").gsub(/Early Date\t/, "#{replace_early_date}").gsub(/Late Date\t/, "#{replace_late_date}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Physical Info
outdata = File.read(new_file).gsub(/Medium Description\t/, "#{replace_medium_desc}").gsub(/Dimensions\t/, "#{replace_dimension_info}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Subjects
outdata = File.read(new_file).gsub(/Subject1\t/, "#{replace_subject1}").gsub(/Subject2\t/, "#{replace_subject2}").gsub(/Subject3\t/, "#{replace_subject3}").gsub(/Subject4\t/, "#{replace_subject4}").gsub(/Subject5\t/, "#{replace_subject5}").gsub(/Subject6\t/, "#{replace_subject6}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Views and Locations
outdata = File.read(new_file).gsub(/View 2\t/, "#{replace_detail}").gsub(/ExhibitMD\t/, "#{replace_exhibition}").gsub(/Location\t/, "#{replace_location}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Making fixes
outdata = File.read(new_file).gsub(/\t/, "#{empty}").gsub(/ <\//, "#{fix_extra_space_end}").gsub(//, "#{empty}").gsub(/&/, "#{fix_amp}").gsub(/>"/, "#{fix_quotes_begin}").gsub(/"</, "#{fix_quotes_end}")
File.open(new_file, 'w') do |out|
  out << outdata
end 

#Eliminating empties
outdata = File.read(new_file).gsub(/<title><\/title>/, "#{empty}")
File.open(new_file, 'w') do |out|
  out << outdata
end 
outdata = File.read(new_file).gsub(/<namePart type="family"><\/namePart>/, "#{empty}").gsub(/<namePart type="given"><\/namePart>/, "#{empty}").gsub(/<name type="personal"><\/name>/, "#{empty}")
File.open(new_file, 'w') do |out|
  out << outdata
end 
outdata = File.read(new_file).gsub(/<name type="corporate"><\/name>/, "#{empty}")
File.open(new_file, 'w') do |out|
  out << outdata
end 
outdata = File.read(new_file).gsub(/<form><\/form>/, "#{empty}").gsub(/<extent><\/extent>/, "#{empty}")
File.open(new_file, 'w') do |out|
  out << outdata
end 
outdata = File.read(new_file).gsub(/<dateIssued><\/dateIssued>/, "#{empty}").gsub(/<dateOther type="early"><\/dateOther>/, "#{empty}").gsub(/<dateOther type="late"><\/dateOther>/, "#{empty}").gsub(/<originInfo><\/originInfo>/, "#{empty}")
File.open(new_file, 'w') do |out|
  out << outdata
end 
outdata = File.read(new_file).gsub(/<topic><\/topic>/, "#{empty}").gsub(/<subject><\/subject>/, "#{empty}")
File.open(new_file, 'w') do |out|
  out << outdata
end 
outdata = File.read(new_file).gsub(/<part>
        <text type="legacy-view"><\/text>
   <\/part>/, "#{empty}")
File.open(new_file, 'w') do |out|
  out << outdata
end 
outdata = File.read(new_file).gsub(/<note type="exhibition"><\/note>/, "#{empty}").gsub(/<note type="location"><\/note>/, "#{empty}")
File.open(new_file, 'w') do |out|
  out << outdata
end 
outdata = File.read(new_file).gsub(/<mods><\/mods>/, "#{empty}")
File.open(new_file, 'w') do |out|
  out << outdata
end 
puts "Empty tags have been removed."


File.open(new_file,'a') do |f|
  f.puts "</modsCollection>"
end

require 'fileutils'
Dir.glob(new_file) do |f|
    FileUtils.mv f, "#{File.dirname(f)}/#{File.basename(f,'.*')}.xml"
puts "Check your new mods xml file before indexing."
end
