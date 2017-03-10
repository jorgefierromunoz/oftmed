class EnfermedadesocularesController < ApplicationController
  before_action :set_enfermedadesoculare, only: [:show, :edit, :update, :destroy]

  # GET /enfermedadesoculares
  # GET /enfermedadesoculares.json
  def index
    @enfermedadesoculares = Enfermedadesoculare.all
  end

  # GET /enfermedadesoculares/1
  # GET /enfermedadesoculares/1.json
  def show
  end

  # GET /enfermedadesoculares/new
  def new
    @enfermedadesoculare = Enfermedadesoculare.new
  end

  # GET /enfermedadesoculares/1/edit
  def edit
  end

  # POST /enfermedadesoculares
  # POST /enfermedadesoculares.json
  def create
    @enfermedadesoculare = Enfermedadesoculare.new(enfermedadesoculare_params)

    respond_to do |format|
      if @enfermedadesoculare.save
        format.html { redirect_to @enfermedadesoculare, notice: 'Enfermedad creada correctamente.' }
        format.json { render :show, status: :created, location: @enfermedadesoculare }
      else
        format.html { render :new }
        format.json { render json: @enfermedadesoculare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enfermedadesoculares/1
  # PATCH/PUT /enfermedadesoculares/1.json
  def update
    respond_to do |format|
      if @enfermedadesoculare.update(enfermedadesoculare_params)
        format.html { redirect_to @enfermedadesoculare, notice: 'Enfermedad actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @enfermedadesoculare }
      else
        format.html { render :edit }
        format.json { render json: @enfermedadesoculare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enfermedadesoculares/1
  # DELETE /enfermedadesoculares/1.json
  def destroy
    @enfermedadesoculare = Enfermedadesoculare.find(params[:id])
    #Enfermedadesoculare.find(params[:id]).destroy
    @enfermedadesoculare.destroy
    respond_to do |format| 
      msg = { :resp => params[:id] }
    format.json  { render :json => msg } 
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfermedadesoculare
      @enfermedadesoculare = Enfermedadesoculare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enfermedadesoculare_params
      params.require(:enfermedadesoculare).permit(:nombre)
    end
end
