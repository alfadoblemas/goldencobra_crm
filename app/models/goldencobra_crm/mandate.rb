# encoding: utf-8

module GoldencobraCrm
  class Mandate < ActiveRecord::Base

    attr_accessible :external_id, :reference_id, :server_ip, :server_name, :internal_id

    before_create :generate_external_id

    validates_presence_of :server_ip
    validates_presence_of :reference_id
    validates_uniqueness_of :external_id

    def generate_external_id
      last_used_number = GoldencobraCrm::Mandate.order(:created_at).last.try(:internal_id).to_i + 1 + Goldencobra::Setting.for_key('goldencobra_crm.api.mandate.initial_counter').to_i
      self.internal_id = last_used_number
      formated_number = "#{last_used_number}".rjust(Goldencobra::Setting.for_key('goldencobra_crm.api.mandate.length').to_i, "0")
      self.external_id = "#{Goldencobra::Setting.for_key('goldencobra_crm.api.mandate.prefix')}#{formated_number}"
    end

  end
end
