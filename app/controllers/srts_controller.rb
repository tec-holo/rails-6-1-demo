class SrtsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_srt, only: %i[ show edit update destroy ]

  # GET /srts or /srts.json
  def index
    @srts = current_user.srts.order(created_at: :desc)
    @new_srt = Srt.new
  end

  # GET /srts/1 or /srts/1.json
  def show
  end

  # GET /srts/new
  def new
    @srt = Srt.new
  end

  # GET /srts/1/edit
  def edit
  end

  # POST /srts or /srts.json
  def create
    @srt = Srt.new(srt_params.merge(user: current_user))

    respond_to do |format|
      if @srt.save
        format.html { redirect_to srt_url, notice: "Srt was successfully created." }
        format.json { render :show, status: :created, location: @srt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @srt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /srts/1 or /srts/1.json
  def update
    respond_to do |format|
      if @srt.update(srt_params)
        format.html { redirect_to srt_url, notice: "Srt was successfully updated." }
        format.json { render :show, status: :ok, location: @srt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @srt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /srts/1 or /srts/1.json
  def destroy
    @srt.destroy

    respond_to do |format|
      format.html { redirect_to srts_url, notice: "Srt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_srt
      @srt = Srt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def srt_params
      params.require(:srt).permit(:date, :ops, :browser_search, :source, :solution, :user_id)
    end
end
