require 'rubyXL'
# This file should contain all the record creation needed to seed the database (with its default.value if with its default.present?) # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

outbreak_workbook = RubyXL::Parser.parse( Rails.root.join('public/NationalOutbreakPublicDataTool.xlsx'))
worksheet = outbreak_workbook.worksheets[0]
worksheet.each do |row|
	begin
	  p OutBreak.create(
			report_date: Date.new(((row[0].value.to_i if row[0].present?)),((row[1].value.to_i if row[1].present?))),
			state: (row[2].value if row[2].present?),
			primary_mode: (row[3].value if row[3].present?),
			etiology: (row[4].value if row[4].present?),
			serotype_or_genotype: (row[5].value if row[5].present?),
			etiology_status: (row[6].value if row[6].present?),
			setting: (row[7].value if row[7].present?),
			illnesses: (row[8].value.to_i if row[8].present?),
			hospitalizations: (row[9].value.to_i if row[9].present?),
			deaths: (row[11].value.to_i if row[11].present?)
		)
	rescue => e
		p "#{e}"
	end
end