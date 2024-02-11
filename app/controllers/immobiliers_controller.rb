class ImmobiliersController < ApplicationController
  before_action :set_immobilier, only: %i[ show edit update destroy ]

  # GET /immobiliers or /immobiliers.json
  def index
    @immobiliers = Immobilier.all
  end

  # GET /immobiliers/1 or /immobiliers/1.json
  def show
  end

  # GET /immobiliers/new
  def new
    @immobilier = Immobilier.new
  end

  # GET /immobiliers/1/edit
  def edit
  end

  # POST /immobiliers or /immobiliers.json
  def create
    @immobilier = Immobilier.new(immobilier_params)

    respond_to do |format|
      if @immobilier.save
        format.html { redirect_to immobilier_url(@immobilier), notice: "Immobilier was successfully created." }
        format.json { render :show, status: :created, location: @immobilier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @immobilier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /immobiliers/1 or /immobiliers/1.json
  def update
    respond_to do |format|
      if @immobilier.update(immobilier_params)
        format.html { redirect_to immobilier_url(@immobilier), notice: "Immobilier was successfully updated." }
        format.json { render :show, status: :ok, location: @immobilier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @immobilier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /immobiliers/1 or /immobiliers/1.json
  def destroy
    @immobilier.destroy

    respond_to do |format|
      format.html { redirect_to immobiliers_url, notice: "Immobilier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_immobilier
      @immobilier = Immobilier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def immobilier_params
      params.require(:immobilier).permit(:titre, :chambre, :salle_de_bains, :description, :prix, :adresse, :region, :etage, :rez_de_chausse, :terasse, :contact, :statut, :etat)
    end
end
