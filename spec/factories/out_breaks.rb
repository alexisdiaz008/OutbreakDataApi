FactoryBot.define do
  factory :out_break do
    report_date { "2019-12-16" }
    state { "MyString" }
    primary_mode { "MyString" }
    etiology { "MyString" }
    serotype_or_genotype { "MyString" }
    etiology_status { "MyString" }
    setting { "MyString" }
    illnesses { 1 }
    hospitalizations { 1 }
    deaths { 1 }
  end
end
