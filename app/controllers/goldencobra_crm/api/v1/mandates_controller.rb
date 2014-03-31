# encoding: utf-8

require_dependency "goldencobra_crm/application_controller"

module GoldencobraCrm
  module Api
    module V1
      class MandatesController < ApplicationController
        before_filter :authenticate_visitor!

        # POST crm/api/vi/mandates.json
        def create
          @mandate = Mandate.new(params[:mandate])
          @mandate.server_ip = request.remote_ip
          @mandate.visitor = current_visitor

          respond_to do |format|
            if @mandate.save
              format.json { render json: @mandate.to_json(:only => :external_id), status: :created }
            else
              format.json { render json: @mandate.errors, status: :unprocessable_entity }
            end
          end
        end

      end
    end
  end
end
