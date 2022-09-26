class KimatusController < ApplicationController
  before_action :set_kimatu, only: %i[ show edit update destroy ]

  # GET /kimatus or /kimatus.json
  def index
    @kimatus = Kimatu.all
  end

  # GET /kimatus/1 or /kimatus/1.json
  def show
  end

  # GET /kimatus/new
  def new
    @kimatu = Kimatu.new
  end

  # GET /kimatus/1/edit
  def edit
  end

  # POST /kimatus or /kimatus.json
  def create
    @kimatu = Kimatu.new(kimatu_params)

    respond_to do |format|
      if @kimatu.save
        format.html { redirect_to kimatu_url(@kimatu), notice: "Kimatu was successfully created." }
        format.json { render :show, status: :created, location: @kimatu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kimatu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kimatus/1 or /kimatus/1.json
  def update
    respond_to do |format|
      if @kimatu.update(kimatu_params)
        format.html { redirect_to kimatu_url(@kimatu), notice: "Kimatu was successfully updated." }
        format.json { render :show, status: :ok, location: @kimatu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kimatu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kimatus/1 or /kimatus/1.json
  def destroy
    @kimatu.destroy

    respond_to do |format|
      format.html { redirect_to kimatus_url, notice: "Kimatu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kimatu
      @kimatu = Kimatu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kimatu_params
      params.require(:kimatu).permit(:gakusei_id, :kbn, :kokugo, :sugaku, :eigo)
    end
end
