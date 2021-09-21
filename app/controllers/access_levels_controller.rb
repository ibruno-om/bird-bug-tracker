# frozen_string_literal: true

class AccessLevelsController < ApplicationController
  before_action :set_access_level, only: %i[show edit update destroy]

  # GET /access_levels or /access_levels.json
  def index
    @access_levels = AccessLevel.all
  end

  # GET /access_levels/1 or /access_levels/1.json
  def show; end

  # GET /access_levels/new
  def new
    @access_level = AccessLevel.new
  end

  # GET /access_levels/1/edit
  def edit; end

  # POST /access_levels or /access_levels.json
  def create
    @access_level = AccessLevel.new(access_level_params)

    respond_to do |format|
      if @access_level.save
        format.html { redirect_to @access_level, notice: 'Access Level was successfully created.' }
        format.json { render :show, access_level: :created, location: @access_level }
      else
        format.html { render :new, access_level: :unprocessable_entity }
        format.json { render json: @access_level.errors, access_level: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /access_levels/1 or /access_levels/1.json
  def update
    respond_to do |format|
      if @access_level.update(access_level_params)
        format.html { redirect_to @access_level, notice: 'Access Level was successfully updated.' }
        format.json { render :show, access_level: :ok, location: @access_level }
      else
        format.html { render :edit, access_level: :unprocessable_entity }
        format.json { render json: @access_level.errors, access_level: :unprocessable_entity }
      end
    end
  end

  # DELETE /access_levels/1 or /access_levels/1.json
  def destroy
    @access_level.destroy
    respond_to do |format|
      format.html { redirect_to access_levels_url, notice: 'Access Level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_access_level
    @access_level = AccessLevel.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def access_level_params
    params.require(:access_level).permit(:name, :description, :enable, :visibility)
  end
end
