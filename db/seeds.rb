require 'rubyXL'
# This file should contain all the record creation needed to seed the database with its default.value if with its default.present? # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

outbreak_workbook = RubyXL::Parser.parse( Rails.root.join('public/NationalOutbreakPublicDataTool.xlsx'))
worksheet = outbreak_workbook.worksheets[0]
worksheet.each do |row|
	pp "Year: #{row[0].value if row[0].present?}, Month: #{row[1].value if row[1].present?} State: #{row[2].value if row[2].present?} Primary-Mode: #{row[3].value if row[3].present?} Etiology: #{row[4].value if row[4].present?} Serotype or Genotype: #{row[5].value if row[5].present?} Etiology Status: #{row[6].value if row[6].present?} Setting: #{row[7].value if row[7].present?} Illnesses: #{row[8].value if row[8].present?} Hospitalizations: #{row[9].value if row[9].present?} Deaths: #{row[11].value if row[11].present?}"
end
# csv = CSV.parse(csv_text, :headers => true)

