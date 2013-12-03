# Change File Names
print "Which file? "
filename = gets.chomp
new_file = filename + '.new'


# Replacing spreadsheet columns with xml tags.
replace_title = '<relatedItem type="constituent"><titleInfo><title>'
replace_annotator = '</title></titleInfo><name type="personal"><namePart>'
replace_annotator_occ1 = '</namePart><role><roleTerm>annotator</roleTerm></role><description>'
replace_annotator_occ2 = ', '
replace_author = '</description></name><name type="personal"><namePart>'
replace_author_occ1 = '</namePart><role><roleTerm>author</roleTerm></role><description>'
replace_author_occ2 = ', '
replace_authorofcitedbook = '</description></name><name type="personal"><namePart>'
replace_authorofcitedbook_occ1 = '</namePart><role><roleTerm>author of cited book</roleTerm></role><description>'
replace_authorofcitedbook_occ2 = ', '
replace_authorofpostscript = '</description></name><name type="personal"><namePart>'
replace_authorofpostscript_occ1 = '</namePart><role><roleTerm>author of postscript</roleTerm></role><description>'
replace_authorofpostscriptk_occ2 = ', '
replace_copyist = '</description></name><name type="personal"><namePart>'
replace_copyist_occ1 = '</namePart><role><roleTerm>copyist</roleTerm></role><description>'
replace_copyist_occ2 = ', '
replace_exlibris = '</description></name><name type="personal"><namePart>'
replace_exlibris_occ1 = '</namePart><role><roleTerm>ex libris</roleTerm></role><description>'
replace_exlibris_occ2 = ', '
replace_presumedauthor = '</description></name><name type="personal"><namePart>'
replace_presumedauthor_occ1 = '</namePart><role><roleTerm>presumed author</roleTerm></role><description>'
replace_presumedauthor_occ2 = ', '
replace_presumedrecipient = '</description></name><name type="personal"><namePart>'
replace_presumedrecipient_occ1 = '</namePart><role><roleTerm>presumed recipient</roleTerm></role><description>'
replace_presumedrecipient_occ2 = ', '
replace_presumedsender = '</description></name><name type="personal"><namePart>'
replace_presumedsender_occ1 = '</namePart><role><roleTerm>presumed sender</roleTerm></role><description>'
replace_presumedsender_occ2 = ', '
replace_quotedname = '</description></name><name type="personal"><namePart>'
replace_quotedname_occ1 = '</namePart><role><roleTerm>quoted name</roleTerm></role><description>'
replace_quotedname_occ2 = ', '
replace_recipient = '</description></name><name type="personal"><namePart>'
replace_recipient_occ1 = '</namePart><role><roleTerm>recipient</roleTerm></role><description>'
replace_recipient_occ2 = ', '
replace_relatedname = '</description></name><name type="personal"><namePart>'
replace_relatedname_occ1 = '</namePart><role><roleTerm>related name</roleTerm></role><description>'
replace_relatedname_occ2 = ', '
replace_sender = '</description></name><name type="personal"><namePart>'
replace_sender_occ1 = '</namePart><role><roleTerm>sender</roleTerm></role><description>'
replace_sender_occ2 = ', '
replace_signatory = '</description></name><name type="personal"><namePart>'
replace_signatory_occ1 = '</namePart><role><roleTerm>signatory</roleTerm></role><description>'
replace_signatory_occ2 = ', '
replace_translator = '</description></name><name type="personal"><namePart>'
replace_translator_occ1 = '</namePart><role><roleTerm>translator</roleTerm></role><description>'
replace_translator_occ2 = ', '
replace_language1 = '</description></name><language><languageTerm type="code">'
replace_language2 = '</languageTerm><language><languageTerm type="code">'
replace_date_letter = '</language><typeOfResource>mixed material</typeOfResource><genre></genre><originInfo><!-- which item in title are this date and place associated with? --><dateOther type="letter">'
replace_letter_place = '</dateOther><place><placeTerm>'
replace_numberoffiles = '</placeTerm></place></originInfo><physicalDescription><internetMediaType>image/tiff</internetMediaType><extent unit="files">'
replace_pagestart = '</extent></physicalDescription><part><extent unit="page"><start>'
replace_pageend = '</start><end>'
replace_comments = '</end></extent></part><abstract>'
replace_subject1 = '</abstract><subject><topic>'
replace_subject2 = '</topic><topic>'
replace_acompdate = '<relatedItem type="constituent"><originInfo><dateOther type="accompanying letter">'
replace_acompplace = '</dateOther><place><placeTerm>'
replace_oldstyleletterdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="old style letter">'
replace_oldestyleletterplace = '</dateOther><place><placeTerm>'
replace_compositiondate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="composition">'
replace_compositionplace = '</dateOther><place><placeTerm>'
replace_copydate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="copy">'
replace_copyplace = '</dateOther><place><placeTerm>'
replace_newdocumentdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="new document">'
replace_newdocumentplace = '</dateOther><place><placeTerm>'
replace_letter2date = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="letter">'
replace_letter2place = '</dateOther><place><placeTerm>'
replace_letterabincdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="letter ab inc.">'
replace_letterabincplace = '</dateOther><place><placeTerm>'
replace_newstyleletterdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="new style letter">'
replace_newstyleletterplace = '</dateOther><place><placeTerm>'
replace_letterreferredtodate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="letter referred to">'
replace_letterreferredtoplace = '</dateOther><place><placeTerm>'
replace_manuscriptreferredtodate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="manuscript referred to">'
replace_manuscriptreferredtoplace = '</dateOther><place><placeTerm>'
replace_observationdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="observation">'
replace_observationplace = '</dateOther><place><placeTerm>'
replace_originalsentdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="original sent">'
replace_originalsentplace = '</dateOther><place><placeTerm>'
replace_proclamationdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="proclamation">'
replace_proclamationplace = '</dateOther><place><placeTerm>'
replace_publicationdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="publication">'
replace_publicationplace = '</dateOther><place><placeTerm>'
replace_quoteddate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="quoted">'
replace_quotedplace = '</dateOther><place><placeTerm>'
replace_endoffile = '</placeTerm></place></originInfo></relatedItem></relatedItem>'
replace_amp = '&amp;'



# Adding language codes.
change_latin = '<languageTerm type="code">lat</languageTerm>'
change_german = '<languageTerm type="code">ger</languageTerm>'
change_italian = '<languageTerm type="code">ita</languageTerm>'
change_greek = '<languageTerm type="code">gre</languageTerm>'
change_arabic = '<languageTerm type="code">ara</languageTerm>'
change_spanish = '<languageTerm type="code">spa</languageTerm>'


#Add <add> tags.
File.open(new_file,'w') do |fo|
  fo.puts '<?xml version="1.0" encoding="UTF-8"?><modsCollection xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.loc.gov/mods/v3" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd">
    <mods version="3.5">
        <titleInfo>
            <title>Correspondence of Athanasius Kircher</title>
        </titleInfo>
        <name type="personal">
            <namePart>Gorman, Michael J.</namePart>
            <role>
                <roleTerm type="text">project director</roleTerm>
            </role>
        </name>
        <name type="personal">
            <namePart>Wilding, Nick</namePart>
            <role>
                <roleTerm type="text">project director</roleTerm>
            </role>
        </name>
        <typeOfResource collection="yes">mixed material</typeOfResource>
        <part>
            <detail type="volume">
                <number>555</number>
            </detail>
        </part>
        <typeOfResource>mixed material</typeOfResource>
        <physicalDescription>
            <internetMediaType>image/tiff</internetMediaType>
            <extent>584 images</extent>
        </physicalDescription>
        <abstract>"The Athanasius Kircher correspondence project was created with the goal of making the manuscript correspondence of Athanasius Kircher available on the Internet. The project was commenced through the collaboration of the Istituto e Museo di Storia della Scienza in Florence, the Pontifical Gregorian University in Rome and the European University Institute in Fiesole, under the direction of Michael John Gorman and Nick Wilding. Since September 2000, the digital collection has been rehoused at Stanford University." -- Introduction.</abstract>
        <location>
            <physicalLocation>Archives of the Pontifical Gregorian University</physicalLocation>
            <shelfLocator>APUG 555</shelfLocator>
        </location>'
        
	File.foreach(filename) do |li|
    	fo.puts li
	end
end

File.open(new_file,'a') do |f|
  f.puts "</mods></modsCollection>"
end

#Replace columns with SOLR xml tags.
outdata = File.read(filename).gsub(/letter (ab inc.) date\t/, "#{replace_letter_ab_date}").gsub(/letter (ab inc.) year\t/, "#{replace_letter_ab_year}").gsub(/letter (ab inc.) place\t/, "#{replace_letter_ab_place}").gsub(/new style letter date\t/, "#{replace_new_style_letter_date}").gsub(/new style letter year\t/, "#{replace_new_style_letter_year}").gsub(/new style letter place\t/, "#{replace_new_style_letter_place}").gsub(/letter referred to date\t/, "#{replace_letter_referred_to_date}").gsub(/letter referred to year\t/, "#{replace_letter_referred_to_year}").gsub(/letter referred to place\t/, "#{replace_letter_referred_to_place}").gsub(/accomp_date\t/, "#{replace_acomp_date}").gsub(/accomp_letter year\t/, "#{replace_acomp_letter_year}").gsub(/accomp_letter place\t/, "#{replace_acomp_letter_place}").gsub(/old_style_letter date\t/, "#{replace_old_style_letter_date}").gsub(/old_style_letter year\t/, "#{replace_old_style_letter_year}").gsub(/old_style_letter place\t/, "#{replace_old_style_letter_place}").gsub(/presumed_author\t/, "#{replace_presumed_author}").gsub(/presumed_author occupation\t/, "#{replace_presumed_author_occ}").gsub(/presumed_recipient\t/, "#{replace_presumed_recipient}").gsub(/presumed_recipient occupation\t/, "#{replace_presumed_recipient_occ}").gsub(/presumed_sender\t/, "#{replace_presumed_sender}").gsub(/presumed_sender occupation\t/, "#{replace_presumed_sender_occ}").gsub(/title ID\t/, "#{replace_title_ID}").gsub(/\tvolume\t/, "#{replace_volume}").gsub(/\ttitle\t"/, "#{replace_title}").gsub(/\ttitle\t/, "#{replace_title}").gsub(/annotator\t/, "#{replace_annotator}").gsub(/annotator occupation\t/, "#{replace_annotator_occ}").gsub(/author\t/, "#{replace_author}").gsub(/author occupation\t/, "#{replace_author_occ}").gsub(/author_of_cited_book\t/, "#{replace_author_of_cited_book}").gsub(/author of cited book occupation\t/, "#{replace_author_of_cited_book_occ}").gsub(/author_of_postscript\t/, "#{replace_author_of_postscript}").gsub(/author_of_postscript occupation\t/, "#{replace_author_of_postscript_occ}").gsub(/copyist\t/, "#{replace_copyist}").gsub(/copyist occupation\t/, "#{replace_copyist_occ}").gsub(/ex_libris\t/, "#{replace_ex_libris}").gsub(/ex_libris occupation\t/, "#{replace_ex_libris_occ}").gsub(/quoted_name\t/, "#{replace_quoted_name}").gsub(/quoted_name occupation\t/, "#{replace_quoted_name_occ}").gsub(/recipient\t/, "#{replace_recipient}").gsub(/recipient occupation\t/, "#{replace_recipient_occ}").gsub(/related_name\t/, "#{replace_related_name}").gsub(/related_name occupation\t/, "#{replace_related_name_occ}").gsub(/sender\t/, "#{replace_sender}").gsub(/sender occupation\t/, "#{replace_sender_occ}").gsub(/signatory\t/, "#{replace_signatory}").gsub(/signatory occupation\t/, "#{replace_signatory_occ}").gsub(/translator\t/, "#{replace_translator}").gsub(/translator occupation\t/, "#{replace_translator_occ}").gsub(/text type\t/, "#{replace_text_type}").gsub(/comment\t"/, "#{replace_comment}").gsub(/comment\t/, "#{replace_comment}").gsub(/"\tsubject\t/, "#{replace_subject}").gsub(/\tsubject\t/, "#{replace_subject}").gsub(/language\t/, "#{replace_language}").gsub(/composition date\t/, "#{replace_composition_date}").gsub(/composition year\t/, "#{replace_composition_year}").gsub(/composition place\t/, "#{replace_composition_place}").gsub(/copy date\t/, "#{replace_copy_date}").gsub(/copy year\t/, "#{replace_copy_year}").gsub(/copy place\t/, "#{replace_copy_place}").gsub(/new document date\t/, "#{replace_new_document_date}").gsub(/new document year\t/, "#{replace_new_document_year}").gsub(/new document place\t/, "#{replace_new_document_place}").gsub(/letter date\t/, "#{replace_letter_date}").gsub(/letter year\t/, "#{replace_letter_year}").gsub(/letter place\t/, "#{replace_letter_place}").gsub(/manuscript referred to date\t/, "#{replace_manuscript_referred_to_date}").gsub(/manuscript referred to year\t/, "#{replace_manuscript_referred_to_year}").gsub(/manuscript referred to place\t/, "#{replace_manuscript_referred_to_place}").gsub(/manuscript date\t/, "#{replace_manuscript_date}").gsub(/manuscript year\t/, "#{replace_manuscript_year}").gsub(/manuscript place\t/, "#{replace_manuscript_place}").gsub(/observation date\t/, "#{replace_observation_date}").gsub(/observation year\t/, "#{replace_observation_year}").gsub(/observation place\t/, "#{replace_observation_place}").gsub(/original sent date\t/, "#{replace_original_sent_date}").gsub(/original sent year\t/, "#{replace_original_sent_year}").gsub(/original sent place\t/, "#{replace_original_sent_place}").gsub(/proclamation date\t/, "#{replace_proclamation_date}").gsub(/proclamation year\t/, "#{replace_proclamation_year}").gsub(/proclamation place\t/, "#{replace_proclamation_place}").gsub(/publication date\t/, "#{replace_publication_date}").gsub(/publication year\t/, "#{replace_publication_year}").gsub(/publication place\t/, "#{replace_publication_place}").gsub(/quoted date\t/, "#{replace_quoted_date}").gsub(/quoted year\t/, "#{replace_quoted_year}").gsub(/quoted place\t/, "#{replace_quoted_place}").gsub(/url\t/, "#{replace_url}").gsub(/\tend/, "#{replace_end}").gsub(/\t/, "#{replace_space}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

puts "Columns have been converted to MODS."

#Adding language codes
outdata = File.read(new_file).gsub(/<languageTerm type="code">Latin/, "#{change_latin}").gsub(/<languageTerm type="code">German/, "#{change_german}").gsub(/<languageTerm type="code">Italian/, "#{change_italian}").gsub(/<languageTerm type="code">Greek/, "#{change_greek}").gsub(/<languageTerm type="code">Arabic/, "#{change_arabic}").gsub(/<languageTerm type="code">Spanish/, "#{change_spanish}")
File.open(new_file, 'w') do |out|
  out << outdata
end  
puts "Languages have been coded with MARC codes."

File.open(new_file,'a') do |f|
  f.puts "</add>"
end

require 'fileutils'
Dir.glob(new_file) do |f|
    FileUtils.mv f, "#{File.dirname(f)}/#{File.basename(f,'.*')}.mods"
puts "Check your new MODS file before submitting."
end
