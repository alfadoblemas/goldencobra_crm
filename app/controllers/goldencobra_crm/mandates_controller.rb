# encoding: utf-8

require_dependency "goldencobra_crm/application_controller"

module GoldencobraCrm
  class MandatesController < ApplicationController
    before_filter :authenticate_visitor!, :only => [:create]
    before_filter :authenticate_user!, :except => [:create]
    # GET /mandates
    # GET /mandates.json
    def index
      @mandates = Mandate.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @mandates }
      end
    end

    # GET /mandates/1
    # GET /mandates/1.json
    def show
      @mandate = Mandate.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @mandate }
      end
    end

    # GET /mandates/new
    # GET /mandates/new.json
    def new
      @mandate = Mandate.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @mandate }
      end
    end

    # GET /mandates/1/edit
    def edit
      @mandate = Mandate.find(params[:id])
    end

    # POST /mandates
    # POST /mandates.json
    def create
      @mandate = Mandate.new(params[:mandate])
      @mandate.server_ip = request.remote_ip

      respond_to do |format|
        if @mandate.save
          format.html { redirect_to @mandate, notice: 'Mandate was successfully created.' }
          format.json { render json: @mandate, status: :created, location: @mandate }
        else
          format.html { render action: "new" }
          format.json { render json: @mandate.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /mandates/1
    # PUT /mandates/1.json
    def update
      @mandate = Mandate.find(params[:id])

      respond_to do |format|
        if @mandate.update_attributes(params[:mandate])
          format.html { redirect_to @mandate, notice: 'Mandate was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @mandate.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /mandates/1
    # DELETE /mandates/1.json
    def destroy
      @mandate = Mandate.find(params[:id])
      @mandate.destroy

      respond_to do |format|
        format.html { redirect_to mandates_url }
        format.json { head :no_content }
      end
    end
  end
end
