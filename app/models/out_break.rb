class OutBreak < ApplicationRecord
	validates_presence_of :report_date, :state, :primary_mode, :etiology, :serotype_or_genotype, :etiology_status, :setting, :illnesses, :hospitalizations, :deaths
end
