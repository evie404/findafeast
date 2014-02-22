class FeastsController < ApplicationController
  before_action :set_feast, only: [:show, :edit, :update, :destroy]
  before_action :set_restaurant, only: [:new]


  # GET /feasts
  # GET /feasts.json
  def index
    @feasts = Feast.all
  end

  # GET /feasts/1
  # GET /feasts/1.json
  def show
  end

  # GET /feasts/new
  def new
    @feast = Feast.new(restaurant_id: @restaurant.id)
    @feast.name = @feast.default_name
  end

  # GET /feasts/1/edit
  def edit
  end

  # POST /feasts
  # POST /feasts.json
  def create
    @feast = Feast.new(feast_params)

    respond_to do |format|
      if @feast.save
        format.html { redirect_to @feast, notice: 'Feast was successfully created.' }
        format.json { render action: 'show', status: :created, location: @feast }
      else
        format.html { render action: 'new' }
        format.json { render json: @feast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feasts/1
  # PATCH/PUT /feasts/1.json
  def update
    respond_to do |format|
      if @feast.update(feast_params)
        format.html { redirect_to @feast, notice: 'Feast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @feast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feasts/1
  # DELETE /feasts/1.json
  def destroy
    @feast.destroy
    respond_to do |format|
      format.html { redirect_to feasts_url }
      format.json { head :no_content }
    end
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_feast
      @feast = Feast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feast_params
      params.require(:feast).permit(:name, :description, :restaurant_id, :user_tokens)
    end
end
