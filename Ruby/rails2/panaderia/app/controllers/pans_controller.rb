class PansController < ApplicationController
  before_action :set_pan, only: [:show, :edit, :update, :destroy]

  # GET /pans
  # GET /pans.json
  def index
    @pans = Pan.all
  end

  # GET /pans/1
  # GET /pans/1.json
  def show
  end

  # GET /pans/new
  def new
    @pan = Pan.new
  end

  # GET /pans/1/edit
  def edit
  end

  # POST /pans
  # POST /pans.json
  def create
    @pan = Pan.new(pan_params)

    respond_to do |format|
      if @pan.save
        format.html { redirect_to @pan, notice: 'Pan was successfully created.' }
        format.json { render :show, status: :created, location: @pan }
      else
        format.html { render :new }
        format.json { render json: @pan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pans/1
  # PATCH/PUT /pans/1.json
  def update
    respond_to do |format|
      if @pan.update(pan_params)
        format.html { redirect_to @pan, notice: 'Pan was successfully updated.' }
        format.json { render :show, status: :ok, location: @pan }
      else
        format.html { render :edit }
        format.json { render json: @pan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pans/1
  # DELETE /pans/1.json
  def destroy
    @pan.destroy
    respond_to do |format|
      format.html { redirect_to pans_url, notice: 'Pan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pan
      @pan = Pan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pan_params
      params.require(:pan).permit(:name, :descption, :price)
    end
end
