require "csv"
# Adding existing links from csv
CSV.open("questions.txt","rb").each do |row|
  q = Techsuppquestions.new
  q.question = row[0]
  q.save
end


