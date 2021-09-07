# frozen_string_literal: true

class ReproducibilitiesController < ApplicationController
  before_action :set_reproducibility, only: %i[show edit update destroy]

  # GET /reproducibilities or /reproducibilities.json
  def index
    @reproducibilities = Reproducibility.all
  end

  # GET /reproducibilities/1 or /reproducibilities/1.json
  def show; end

  # GET /reproducibilities/new
  def new
    @reproducibility = Reproducibility.new
  end

  # GET /reproducibilities/1/edit
  def edit; end

  # POST /reproducibilities or /reproducibilities.json
  def create
    @reproducibility = Reproducibility.new(reproducibility_params)

    respond_to do |format|
      if @reproducibility.save
        format.html { redirect_to @reproducibility, notice: 'RRRRReproducibility was successfully created.' }
        format.json { render :show, reproducibility: :created, location: @reproducibility }
      else
        format.html { render :new, reproducibility: :unprocessable_entity }
        format.json { render json: @reproducibility.errors, reproducibility: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reproducibilities/1 or /reproducibilities/1.json
  def update
    respond_to do |format|
      if @reproducibility.update(reproducibility_params)
        format.html { redirect_to @reproducibility, notice: 'Reproducibility was successfully updated.' }
        format.json { render :show, reproducibility: :ok, location: @reproducibility }
      else
        format.html { render :edit, reproducibility: :unprocessable_entity }
        format.json { render json: @reproducibility.errors, reproducibility: :unprocessable_entity }
      end
    end
  end

  # DELETE /reproducibilities/1 or /reproducibilities/1.json
  def destroy
    @reproducibility.destroy
    respond_to do |format|
      format.html { redirect_to reproducibilities_url, notice: 'Reproducibility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reproducibility
    @reproducibility = Reproducibility.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reproducibility_params
    params.require(:reproducibility).permit(:description)
  end
end
