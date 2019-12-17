class OutBreakSerializer < ActiveModel::Serializer
  attributes :id, :report_date, :state, :primary_mode, :etiology, :serotype_or_genotype, :etiology_status, :setting, :illnesses, :hospitalizations, :deaths
end
