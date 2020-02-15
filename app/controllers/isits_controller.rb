class IsitsController < ApplicationController
  before_action :set_isit, only: [:show, :edit, :update, :destroy]

  # GET /isits
  # GET /isits.json
  def index
    @isits = Isit.all
  end

  # GET /isits/1
  # GET /isits/1.json
  def show
  end

  # GET /isits/new
  def new
    @isit = Isit.new
  end

  # GET /isits/1/edit
  def edit
  end

  # POST /isits
  # POST /isits.json
  def create
    @isit = Isit.new(isit_params)

    respond_to do |format|
      if @isit.save
        format.html { redirect_to @isit, notice: 'Isit was successfully created.' }
        format.json { render :show, status: :created, location: @isit }
      else
        format.html { render :new }
        format.json { render json: @isit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /isits/1
  # PATCH/PUT /isits/1.json
  def update
    respond_to do |format|
      if @isit.update(isit_params)
        format.html { redirect_to @isit, notice: 'Isit was successfully updated.' }
        format.json { render :show, status: :ok, location: @isit }
      else
        format.html { render :edit }
        format.json { render json: @isit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /isits/1
  # DELETE /isits/1.json
  def destroy
    @isit.destroy
    respond_to do |format|
      format.html { redirect_to isits_url, notice: 'Isit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_isit
      @isit = Isit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def isit_params
      params.require(:isit).permit(:name)
    end
end
