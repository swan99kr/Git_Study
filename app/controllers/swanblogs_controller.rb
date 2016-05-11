class SwanblogsController < ApplicationController
  before_action :set_swanblog, only: [:show, :edit, :update, :destroy]

  # GET /swanblogs
  # GET /swanblogs.json
  def index
    @swanblogs = Swanblog.all
  end

  # GET /swanblogs/1
  # GET /swanblogs/1.json
  def show
  end

  # GET /swanblogs/new
  def new
    @swanblog = Swanblog.new
  end

  # GET /swanblogs/1/edit
  def edit
  end

  # POST /swanblogs
  # POST /swanblogs.json
  def create
    @swanblog = Swanblog.new(swanblog_params)

    respond_to do |format|
      if @swanblog.save
        format.html { redirect_to @swanblog, notice: 'Swanblog was successfully created.' }
        format.json { render :show, status: :created, location: @swanblog }
      else
        format.html { render :new }
        format.json { render json: @swanblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swanblogs/1
  # PATCH/PUT /swanblogs/1.json
  def update
    respond_to do |format|
      if @swanblog.update(swanblog_params)
        format.html { redirect_to @swanblog, notice: 'Swanblog was successfully updated.' }
        format.json { render :show, status: :ok, location: @swanblog }
      else
        format.html { render :edit }
        format.json { render json: @swanblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swanblogs/1
  # DELETE /swanblogs/1.json
  def destroy
    @swanblog.destroy
    respond_to do |format|
      format.html { redirect_to swanblogs_url, notice: 'Swanblog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swanblog
      @swanblog = Swanblog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swanblog_params
      params.require(:swanblog).permit(:title, :contest, :text, :date)
    end
end
