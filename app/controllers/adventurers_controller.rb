class AdventurersController < ApplicationController
  before_action :set_adventurer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /adventurers
  # GET /adventurers.json
  def index
    @adventurers = Adventurer.all
  end

  # GET /adventurers/1
  # GET /adventurers/1.json
  def show
  end

  # GET /adventurers/new
  def new
    @adventurer = Adventurer.new
  end

  # GET /adventurers/1/edit
  def edit
  end

  # POST /adventurers
  # POST /adventurers.json
  def create
    @adventurer = Adventurer.new(adventurer_params)

    respond_to do |format|
      if @adventurer.save
        format.html { redirect_to @adventurer, notice: 'Adventurer was successfully created.' }
        format.json { render :show, status: :created, location: @adventurer }
      else
        format.html { render :new }
        format.json { render json: @adventurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adventurers/1
  # PATCH/PUT /adventurers/1.json
  def update
    respond_to do |format|
      if @adventurer.update(adventurer_params)
        format.html { redirect_to @adventurer, notice: 'Adventurer was successfully updated.' }
        format.json { render :show, status: :ok, location: @adventurer }
      else
        format.html { render :edit }
        format.json { render json: @adventurer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adventurers/1
  # DELETE /adventurers/1.json
  def destroy
    @adventurer.destroy
    respond_to do |format|
      format.html { redirect_to adventurers_url, notice: 'Adventurer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adventurer
      @adventurer = Adventurer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adventurer_params
      params.require(:adventurer).permit(:name, :str, :dex, :con, :int, :wis, :cha)
    end
end
