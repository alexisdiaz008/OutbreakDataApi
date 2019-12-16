require 'rubyXL'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

outbreak_workbook = RubyXL::Parser.parse( Rails.root.join('public/NationalOutbreakPublicDataTool.xlsx'))
# pp outbreak_workbook.worksheets.count
# csv = CSV.parse(csv_text, :headers => true)

