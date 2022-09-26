class GakuseisController < ApplicationController
  before_action :set_gakusei, only: %i[ show edit update destroy ]

  # GET /gakuseis or /gakuseis.json
  def index
    @gakuseis = Gakusei.all
  end

  # GET /gakuseis/1 or /gakuseis/1.json
  def show
  end

  # GET /gakuseis/new
  def new
    @gakusei = Gakusei.new
  end

  # GET /gakuseis/1/edit
  def edit
  end

  # POST /gakuseis or /gakuseis.json
  def create
    @gakusei = Gakusei.new(gakusei_params)

    respond_to do |format|
      if @gakusei.save
        format.html { redirect_to gakusei_url(@gakusei), notice: "Gakusei was successfully created." }
        format.json { render :show, status: :created, location: @gakusei }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gakusei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gakuseis/1 or /gakuseis/1.json
  def update
    respond_to do |format|
      if @gakusei.update(gakusei_params)
        format.html { redirect_to gakusei_url(@gakusei), notice: "Gakusei was successfully updated." }
        format.json { render :show, status: :ok, location: @gakusei }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gakusei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gakuseis/1 or /gakuseis/1.json
  def destroy
    @gakusei.destroy

    respond_to do |format|
      format.html { redirect_to gakuseis_url, notice: "Gakusei was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gakusei
      @gakusei = Gakusei.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gakusei_params
      params.require(:gakusei).permit(:name, :age, :gakusei_no)
    end
end
