class RelatoriesController < ApplicationController
  before_action :set_relatory, only: [:show, :edit, :update, :destroy]

  # GET /relatories
  # GET /relatories.json
  def index
    @relatories = Relatory.all
  end

  # GET /relatories/1
  # GET /relatories/1.json
  def show
  end

  # GET /relatories/new
  def new
    @relatory = Relatory.new
  end

  # GET /relatories/1/edit
  def edit
  end

  # POST /relatories
  # POST /relatories.json
  def create
    @relatory = Relatory.new(relatory_params)

    respond_to do |format|
      if @relatory.save
        format.html { redirect_to @relatory, notice: 'Relatório Salvo.' }
        format.json { render :show, status: :created, location: @relatory }
      else
        format.html { render :new }
        format.json { render json: @relatory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatories/1
  # PATCH/PUT /relatories/1.json
  def update
    respond_to do |format|
      if @relatory.update(relatory_params)
        format.html { redirect_to @relatory, notice: 'Relatório atualizado.' }
        format.json { render :show, status: :ok, location: @relatory }
      else
        format.html { render :edit }
        format.json { render json: @relatory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatories/1
  # DELETE /relatories/1.json
  def destroy
    @relatory.destroy
    respond_to do |format|
      format.html { redirect_to relatories_url, notice: 'Relatório deletado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatory
      @relatory = Relatory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relatory_params
      params.require(:relatory).permit(:buyer, :description, :price,:quantity, :address, :owner)
    end
end
